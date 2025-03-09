"use client"

import { useEffect, useState } from "react"
import Link from "next/link"
import Image from "next/image"
import { motion, AnimatePresence } from "framer-motion"

export default function TermsAndConditions() {
  const [isMenuOpen, setIsMenuOpen] = useState(false)

  useEffect(() => {
    document.title = "GST Magic - Terms & Conditions"
  }, [])

  const fadeIn = {
    hidden: { opacity: 0, y: 30 },
    visible: { opacity: 1, y: 0, transition: { duration: 0.6 } },
  }

  const toggleMenu = () => {
    setIsMenuOpen(!isMenuOpen)
  }

  return (
    <motion.div
      initial="hidden"
      animate="visible"
      exit={{ opacity: 0 }}
      className="min-h-screen bg-[#0e0118] relative overflow-hidden"
    >
      {/* Animated Background Dots */}
      <div className="absolute inset-0 pointer-events-none">
        {[...Array(50)].map((_, i) => (
          <motion.div
            key={i}
            className="absolute w-2 h-2 bg-[#d44cf8] rounded-full opacity-30"
            style={{
              top: `${Math.random() * 100}%`,
              left: `${Math.random() * 100}%`,
            }}
            animate={{
              y: [0, -10, 10, 0],
              opacity: [0.2, 0.5, 0.2],
            }}
            transition={{ duration: Math.random() * 5 + 3, repeat: Number.POSITIVE_INFINITY, ease: "easeInOut" }}
          />
        ))}
      </div>

      {/* Header */}
      <motion.header
        initial="hidden"
        animate="visible"
        variants={fadeIn}
        className="bg-gradient-to-r from-[#120a26] to-[#1a0a2e] shadow-lg"
      >
        <div className="max-w-7xl mx-auto flex items-center justify-between px-6 py-4">
          <div className="flex items-center space-x-3">
            <Image src="/placeholder.svg?height=40&width=40" alt="GST Magic Logo" width={40} height={40} />
            <span className="text-2xl font-bold text-white">GST Magic</span>
          </div>

          {/* Desktop Navigation */}
          <nav className="hidden md:flex space-x-6">
            {["Features", "Testimonials", "Pricing", "FAQs", "Support"].map((item) => (
              <motion.div key={item} whileHover={{ scale: 1.1 }} whileTap={{ scale: 0.95 }}>
                <Link
                  href={`/${item.toLowerCase()}`}
                  className="text-gray-300 hover:text-[#d44cf8] transition duration-300"
                >
                  {item}
                </Link>
              </motion.div>
            ))}
          </nav>

          <motion.div className="hidden md:block" whileHover={{ scale: 1.1 }} whileTap={{ scale: 0.95 }}>
            <Link
              href="/signup"
              className="bg-[#d44cf8] px-6 py-2 rounded-lg text-white font-medium hover:bg-[#c039e3] transition duration-300"
            >
              Get Started
            </Link>
          </motion.div>

          {/* Hamburger Menu Button */}
          <button className="md:hidden text-white focus:outline-none" onClick={toggleMenu} aria-label="Toggle menu">
            <motion.div
              className="w-6 h-5 flex flex-col justify-between"
              initial={false}
              animate={isMenuOpen ? "open" : "closed"}
            >
              <motion.span
                className="w-full h-0.5 bg-[#d44cf8] block rounded-full"
                variants={{
                  closed: { rotate: 0, translateY: 0 },
                  open: { rotate: 45, translateY: 8 },
                }}
                transition={{ duration: 0.3 }}
              />
              <motion.span
                className="w-full h-0.5 bg-[#d44cf8] block rounded-full"
                variants={{
                  closed: { opacity: 1 },
                  open: { opacity: 0 },
                }}
                transition={{ duration: 0.3 }}
              />
              <motion.span
                className="w-full h-0.5 bg-[#d44cf8] block rounded-full"
                variants={{
                  closed: { rotate: 0, translateY: 0 },
                  open: { rotate: -45, translateY: -8 },
                }}
                transition={{ duration: 0.3 }}
              />
            </motion.div>
          </button>
        </div>

        {/* Mobile Menu */}
        <AnimatePresence>
          {isMenuOpen && (
            <motion.div
              className="md:hidden bg-[#1a0a2e] shadow-lg"
              initial={{ height: 0, opacity: 0 }}
              animate={{ height: "auto", opacity: 1 }}
              exit={{ height: 0, opacity: 0 }}
              transition={{ duration: 0.3 }}
            >
              <div className="flex flex-col space-y-4 p-6">
                {["Features", "Testimonials", "Pricing", "FAQs", "Support"].map((item) => (
                  <motion.div
                    key={item}
                    initial={{ x: -20, opacity: 0 }}
                    animate={{ x: 0, opacity: 1 }}
                    exit={{ x: -20, opacity: 0 }}
                    transition={{ duration: 0.2 }}
                  >
                    <Link
                      href={`/${item.toLowerCase()}`}
                      className="text-gray-300 hover:text-[#d44cf8] transition duration-300 block py-2"
                      onClick={() => setIsMenuOpen(false)}
                    >
                      {item}
                    </Link>
                  </motion.div>
                ))}
                <motion.div
                  initial={{ x: -20, opacity: 0 }}
                  animate={{ x: 0, opacity: 1 }}
                  exit={{ x: -20, opacity: 0 }}
                  transition={{ duration: 0.2, delay: 0.5 }}
                  className="pt-2"
                >
                  <Link
                    href="/signup"
                    className="bg-[#d44cf8] px-6 py-2 rounded-lg text-white font-medium hover:bg-[#c039e3] transition duration-300 inline-block"
                    onClick={() => setIsMenuOpen(false)}
                  >
                    Get Started
                  </Link>
                </motion.div>
              </div>
            </motion.div>
          )}
        </AnimatePresence>
      </motion.header>

      {/* Hero Section with Title */}
      <motion.div initial="hidden" animate="visible" variants={fadeIn} className="py-10 text-center">
        <h1 className="text-5xl font-bold mb-4">
          <motion.span
            initial={{ scale: 0.8 }}
            animate={{ scale: 1 }}
            transition={{ duration: 0.5 }}
            className="text-white"
          >
            Terms &{" "}
          </motion.span>
          <motion.span
            initial={{ scale: 0.8 }}
            animate={{ scale: 1 }}
            transition={{ duration: 0.5 }}
            className="text-[#d44cf8]"
          >
            Conditions
          </motion.span>
        </h1>
        <motion.p
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ duration: 1 }}
          className="text-gray-400 text-lg max-w-2xl mx-auto px-4"
        >
          Welcome to GST Magic! By using our platform, you agree to the following
        </motion.p>
      </motion.div>

      {/* Terms Content */}
      <motion.div
        initial="hidden"
        animate="visible"
        variants={{ visible: { transition: { staggerChildren: 0.2 } } }}
        className="max-w-4xl mx-auto px-4 py-10 space-y-10"
      >
        {[
          "Acceptance of Terms",
          "User Responsibilities",
          "Privacy Policy",
          "Payment and Refunds",
          "Prohibited Activities",
        ].map((title, index) => (
          <motion.div key={index} variants={fadeIn} className="bg-[#1a0a2e] p-8 rounded-lg">
            <motion.h2
              initial={{ x: -50, opacity: 0 }}
              animate={{ x: 0, opacity: 1 }}
              transition={{ duration: 0.6 }}
              className="text-2xl font-bold text-[#d44cf8] mb-4"
            >
              {index + 1}. {title}
            </motion.h2>
            <motion.p
              initial={{ opacity: 0 }}
              animate={{ opacity: 1 }}
              transition={{ duration: 0.8 }}
              className="text-white"
            >
              {title === "Acceptance of Terms" &&
                "By accessing and using GST Magic, you accept and agree to be bound by these terms..."}
              {title === "User Responsibilities" &&
                "You agree to provide accurate information and use our services in compliance with the law..."}
              {title === "Privacy Policy" &&
                "Your privacy is important to us. Please review our Privacy Policy to understand how we collect and use your data..."}
              {title === "Payment and Refunds" &&
                "All payments are final. Refunds will be processed only under special circumstances..."}
              {title === "Prohibited Activities" &&
                "Users must not engage in any illegal activities, fraud, or misuse of the platform..."}
            </motion.p>
          </motion.div>
        ))}
      </motion.div>

      {/* Footer */}
      <motion.div initial="hidden" animate="visible" variants={fadeIn} className="text-center py-6 text-gray-400">
        <motion.p initial={{ opacity: 0 }} animate={{ opacity: 1 }} transition={{ duration: 1 }}>
          © {new Date().getFullYear()} GST Magic. All rights reserved.
        </motion.p>
      </motion.div>
    </motion.div>
  )
}

