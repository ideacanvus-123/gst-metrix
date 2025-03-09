import { useEffect } from "react";
import { useRouter, usePathname } from 'next/navigation';  

const useNoAuthCheck = () => {
  const router = useRouter();   
  const pathname = usePathname();  

  useEffect(() => {
   
    if (typeof window !== "undefined") {
     
      const token = localStorage.getItem("token");
      console.log(pathname, "Redirecting because user is logged in");
      const restrictedPages = ["/signin", "/signup","forget-password" ,"/reset-password"];
      console.log(pathname,restrictedPages.includes(pathname), "Redirecting because user is logged in");
      if (token && restrictedPages.includes(pathname)) {
       
        router.push("/");  
      }
    }
  }, [pathname, router]); 

};

export default useNoAuthCheck;
