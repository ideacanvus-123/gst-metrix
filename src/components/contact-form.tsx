"use client"

import type React from "react"
import { useState, type FormEvent } from "react"
import { motion } from "framer-motion"

export default function ContactForm() {
  const [isLoading, setIsLoading] = useState(false)
  const [formData, setFormData] = useState({
    name: "",
    email: "",
    phone: "",
    message: "",
  })
  const [errors, setErrors] = useState({
    name: "",
    email: "",
    phone: "",
    message: "",
  })
  const [isSubmitted, setIsSubmitted] = useState(false)

  const validateForm = () => {
    let isValid = true
    const newErrors = {
      name: "",
      email: "",
      phone: "",
      message: "",
    }

    if (formData.name.length < 2) {
      newErrors.name = "Name must be at least 2 characters"
      isValid = false
    }

    if (!formData.email.match(/^[^\s@]+@[^\s@]+\.[^\s@]+$/)) {
      newErrors.email = "Please enter a valid email"
      isValid = false
    }

    if (formData.phone.length < 10) {
      newErrors.phone = "Phone number must be at least 10 digits"
      isValid = false
    }

    if (formData.message.length < 10) {
      newErrors.message = "Message must be at least 10 characters"
      isValid = false
    }

    setErrors(newErrors)
    return isValid
  }

  const handleSubmit = async (e: FormEvent) => {
    e.preventDefault()

    if (!validateForm()) {
      return
    }

    setIsLoading(true)
    try {
      const response = await fetch("/api/contact", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(formData),
      })

      if (!response.ok) {
        throw new Error("Failed to send message")
      }

      setIsSubmitted(true)
      setFormData({
        name: "",
        email: "",
        phone: "",
        message: "",
      })
    } catch (error) {
      alert(error)
    } finally {
      setIsLoading(false)
    }
  }

  const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
    const { name, value } = e.target
    setFormData((prev) => ({
      ...prev,
      [name]: value,
    }))
  }

  const containerVariants = {
    hidden: { opacity: 0, y: 50 },
    visible: { opacity: 1, y: 0, transition: { duration: 0.5 } },
  }

  const inputVariants = {
    hidden: { opacity: 0, x: -50 },
    visible: { opacity: 1, x: 0, transition: { duration: 0.5 } },
  }

  if (isSubmitted) {
    return (
      <motion.div
        initial="hidden"
        animate="visible"
        variants={containerVariants}
        className="bg-white bg-opacity-90 p-8 rounded-lg shadow-lg max-w-2xl mx-auto"
      >
        <h2 className="text-2xl font-bold text-[#0C3C4A] mb-4">Thank You!</h2>
        <p className="text-gray-700">Your message has been sent successfully. We&apos;ll get back to you soon.</p>
        <motion.button
          whileHover={{ scale: 1.05 }}
          whileTap={{ scale: 0.95 }}
          onClick={() => setIsSubmitted(false)}
          className="mt-6 bg-[#0C3C4A] text-white py-2 px-4 rounded-md hover:bg-opacity-90 transition-colors"
        >
          Send Another Message
        </motion.button>
      </motion.div>
    )
  }

  return (
    <motion.form
      onSubmit={handleSubmit}
      initial="hidden"
      animate="visible"
      variants={containerVariants}
      className="space-y-6 bg-white bg-opacity-90 p-8 rounded-lg shadow-lg max-w-2xl mx-auto"
    >
      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
        <motion.div variants={inputVariants}>
          <label htmlFor="name" className="block text-sm font-medium text-[#0C3C4A] mb-1">
            Name
          </label>
          <input
            id="name"
            name="name"
            type="text"
            value={formData.name}
            onChange={handleChange}
            className="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-[#0C3C4A] transition-all"
            placeholder="Your name"
            aria-describedby="name-error"
          />
          {errors.name && (
            <p id="name-error" className="mt-1 text-sm text-red-600">
              {errors.name}
            </p>
          )}
        </motion.div>

        <motion.div variants={inputVariants}>
          <label htmlFor="email" className="block text-sm font-medium text-[#0C3C4A] mb-1">
            Email
          </label>
          <input
            id="email"
            name="email"
            type="email"
            value={formData.email}
            onChange={handleChange}
            className="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-[#0C3C4A] transition-all"
            placeholder="your@email.com"
            aria-describedby="email-error"
          />
          {errors.email && (
            <p id="email-error" className="mt-1 text-sm text-red-600">
              {errors.email}
            </p>
          )}
        </motion.div>
      </div>

      <motion.div variants={inputVariants}>
        <label htmlFor="phone" className="block text-sm font-medium text-[#0C3C4A] mb-1">
          Phone Number
        </label>
        <input
          id="phone"
          name="phone"
          type="tel"
          value={formData.phone}
          onChange={handleChange}
          className="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-[#0C3C4A] transition-all"
          placeholder="Your phone number"
          aria-describedby="phone-error"
        />
        {errors.phone && (
          <p id="phone-error" className="mt-1 text-sm text-red-600">
            {errors.phone}
          </p>
        )}
      </motion.div>

      <motion.div variants={inputVariants}>
        <label htmlFor="message" className="block text-sm font-medium text-[#0C3C4A] mb-1">
          Message
        </label>
        <textarea
          id="message"
          name="message"
          value={formData.message}
          onChange={handleChange}
          rows={4}
          className="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-[#0C3C4A] transition-all"
          placeholder="Write your message here..."
          aria-describedby="message-error"
        />
        {errors.message && (
          <p id="message-error" className="mt-1 text-sm text-red-600">
            {errors.message}
          </p>
        )}
      </motion.div>

      <motion.button
        type="submit"
        disabled={isLoading}
        whileHover={{ scale: 1.05 }}
        whileTap={{ scale: 0.95 }}
        className="w-full bg-[#0C3C4A] text-white py-3 px-4 rounded-md hover:bg-opacity-90 transition-all disabled:bg-opacity-50 disabled:cursor-not-allowed"
      >
        {isLoading ? "Sending..." : "Send Message"}
      </motion.button>
    </motion.form>
  )
}