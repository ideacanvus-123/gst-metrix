import './globals.css'
import './media_screen.css'
import 'react-toastify/dist/ReactToastify.css'
import Script from 'next/script'
import { Inter } from "next/font/google"

const inter = Inter({ subsets: ["latin"] })

export const metadata = {
  title: "GST Matrix AI - Transform Your Business with Cutting-Edge Technology",
  description: "GST Matrix provides AI-driven solutions for tax compliance, business automation, and digital transformation.",
}

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <head>
        <meta charSet="utf-8" />
        <title>GST Matrix AI - Transform Your Business with Cutting-Edge Technology</title>
        <meta name="description" content="GST Matrix provides AI-driven solutions for tax compliance, business automation, and digital transformation." />
        
        <meta name="robots" content="index, follow" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <link rel="icon" type="image/x-icon" href="/images/gst-matrix-icon.jpg" />
        <link href="/css/all.min.css" rel="stylesheet" />

        {/* Preconnect to external domains */}
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link rel="preconnect" href="https://cdn.jsdelivr.net" />

        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet" />
      </head>
      
      <body className={inter.className}>  
        {children}
        
        {/* Load JavaScript files */}
        <Script type="module" src="/js/custom.js" strategy="lazyOnload" />
        <Script src="https://js.stripe.com/v3/" strategy="afterInteractive" />
      </body>
    </html>
  )
}
