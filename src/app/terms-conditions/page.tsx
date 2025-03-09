"use client"

import { useEffect, useState, useRef } from "react"
import Link from "next/link"
import Image from "next/image"
import { motion, AnimatePresence, useInView } from "framer-motion"

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
            <Image src="/images/icon.png?height=40&width=40" alt="GST Magic Logo" width={40} height={40} />
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

      {/* Terms Content with Scroll Animations */}
      <div className="max-w-4xl mx-auto px-4 py-10 space-y-10">
        {[
          "Acceptance of Terms",
          "User Responsibilities",
          "Privacy Policy",
          "Payment and Refunds",
          "Prohibited Activities",
        ].map((title, index) => (
          <ScrollAnimatedCard key={index} index={index} title={title} />
        ))}
      </div>

      {/* Footer */}
      <motion.div initial="hidden" animate="visible" variants={fadeIn} className="text-center py-6 text-gray-400">
        <motion.p initial={{ opacity: 0 }} animate={{ opacity: 1 }} transition={{ duration: 1 }}>
          © {new Date().getFullYear()} GST Magic. All rights reserved.
        </motion.p>
      </motion.div>
    </motion.div>
  )
}

// Scroll-animated card component
function ScrollAnimatedCard({ index, title }) {
  const cardRef = useRef(null)
  const isInView = useInView(cardRef, { once: false, amount: 0.3 })

  // Different animation variants based on index (alternating left/right)
  const cardVariants = {
    hidden: index % 2 === 0 ? { x: -100, opacity: 0 } : { x: 100, opacity: 0 },
    visible: {
      x: 0,
      opacity: 1,
      transition: {
        duration: 0.8,
        ease: "easeOut",
        delay: 0.1,
      },
    },
  }

  // Title animation
  const titleVariants = {
    hidden: { y: -20, opacity: 0 },
    visible: {
      y: 0,
      opacity: 1,
      transition: {
        duration: 0.5,
        delay: 0.3,
      },
    },
  }

  // Content animation
  const contentVariants = {
    hidden: { y: 20, opacity: 0 },
    visible: {
      y: 0,
      opacity: 1,
      transition: {
        duration: 0.5,
        delay: 0.5,
      },
    },
  }

  // Glow effect on scroll
  const glowVariants = {
    hidden: { boxShadow: "0 0 0 rgba(212, 76, 248, 0)" },
    visible: {
      boxShadow: "0 0 20px rgba(212, 76, 248, 0.3)",
      transition: {
        duration: 1.2,
        delay: 0.2,
        ease: "easeInOut",
      },
    },
  }

  return (
    <motion.div
      ref={cardRef}
      className="bg-[#1a0a2e] p-8 rounded-lg"
      variants={cardVariants}
      initial="hidden"
      animate={isInView ? "visible" : "hidden"}
      style={{
        transformOrigin: index % 2 === 0 ? "left" : "right",
      }}
    >
      <motion.div
        className="absolute inset-0 rounded-lg z-0"
        variants={glowVariants}
        initial="hidden"
        animate={isInView ? "visible" : "hidden"}
      />

      <motion.h2
        variants={titleVariants}
        initial="hidden"
        animate={isInView ? "visible" : "hidden"}
        className="text-2xl font-bold text-[#d44cf8] mb-4 relative z-10"
      >
        {index + 1}. {title}
      </motion.h2>

      <motion.p
        variants={contentVariants}
        initial="hidden"
        animate={isInView ? "visible" : "hidden"}
        className="text-white relative z-10"
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
  )
}

