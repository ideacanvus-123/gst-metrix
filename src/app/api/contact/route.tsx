import { NextResponse } from "next/server"
import nodemailer from "nodemailer"

export async function POST(request: Request) {
  try {
    const body = await request.json()
    const { name, email, phone, message } = body

    const transporter = nodemailer.createTransport({
      service: "gmail",
      auth: {
        user: "ideacanvus@gmail.com",
        pass: 'frbp ruid urpq qlhi',
      },
    })

    const mailOptions = {
      from: email,
      to: "ideacanvus@gmail.com",
      subject: `New Contact Form Submission from ${name}`,
      text: `
        Name: ${name}
        Email: ${email}
        Phone: ${phone}
        Message: ${message}
      `,
      html: `
        <h3>New Contact Form Submission</h3>
        <p><strong>Name:</strong> ${name}</p>
        <p><strong>Email:</strong> ${email}</p>
        <p><strong>Phone:</strong> ${phone}</p>
        <p><strong>Message:</strong> ${message}</p>
      `,
    }

    await transporter.sendMail(mailOptions)

    return NextResponse.json({ message: "Email sent successfully" }, { status: 200 })
  } catch (error) {
    return NextResponse.json({ error: error }, { status: 500 })
  }
}

