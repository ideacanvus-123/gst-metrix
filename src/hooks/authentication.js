import { useEffect } from "react";
import { useRouter } from "next/navigation";  

const useAuthCheck = () => {
  const router = useRouter();  

  useEffect(() => {
    if (typeof window !== "undefined") {
      const token = localStorage.getItem("token");

      if (!token) {
        console.log("No token found, redirecting to signin page");
        router.push("/signin");  
      }
    }
  }, [router]);  

};

export default useAuthCheck;
