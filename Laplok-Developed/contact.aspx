<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Laplok_Developed.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
   <!-- Links + Contact form -->
   <section class="position-relative bg-secondary pt-5 pb-3 pb-lg-0 pb-md-4">
    <div class="container position-relative zindex-2 pt-5">

   

      <div class="row pt-lg-4 pb-3 mb-2 mb-sm-3">

        <!-- Contact links -->
        <div class="col-xl-4 col-lg-5 pb-4 pb-sm-5 mb-2 mb-sm-0">
          <div class="pe-lg-4 pe-xl-0">
            <h1 class="pb-3 pb-md-4 mb-lg-5">Contact Us</h1>
            <div class="d-flex align-items-start pb-3 mb-sm-1 mb-md-3">
              <div class="bg-light text-primary rounded-circle flex-shrink-0 fs-3 lh-1 p-3">
                <i class="bx bx-envelope"></i>
              </div>
              <div class="ps-3 ps-sm-4">
                <h2 class="h4 pb-1 mb-2 mt-2">Email us</h2>
                <p class="mb-2">Please feel free to drop us a line. We will respond as soon as possible.</p>
                <div class="btn btn-link btn-lg px-0">
                  Leave a message
                  <i class="bx bx-right-arrow-alt lead ms-2"></i>
                </div>
              </div>
            </div>
            <div class="d-flex align-items-start">
              <div class="bg-light text-primary rounded-circle flex-shrink-0 fs-3 lh-1 p-3">
                <i class="bx bx-group"></i>
              </div>
              <div class="ps-3 ps-sm-4">
                <h2 class="h4 pb-1 mb-2 mt-2">Careers</h2>
                <p class="mb-2">We’re a fast-growing company always on the lookout for good people. If interested in employment, fill out the contact us form.</p>
                <div class="btn btn-link btn-lg px-0">
                  Send an application
                  <i class="bx bx-right-arrow-alt lead ms-2"></i>
                </div>
              </div>
            </div>
            <div class="d-flex align-items-start pt-5">
              <div class="bg-light text-primary rounded-circle flex-shrink-0 fs-3 lh-1 p-3">
                <i class="bx bx-cog"></i>
              </div>
              <div class="ps-3 ps-sm-4">
                <h2 class="h4 pb-1 mb-2 mt-2">Logoed Laploks Available</h2>
                
                <img src="assets/img/portfolio/list/10.png" class="w-75" alt="Image">
              </div>
            </div>




          </div>
        </div>

        <!-- Contact form -->
        <div class="col-xl-6 col-lg-7 offset-xl-2">
          <div class="card border-light shadow-lg py-3 p-sm-4 p-md-5">
            <div class="bg-dark position-absolute top-0 start-0 w-100 h-100 rounded-3 d-none d-dark-mode-block"></div>
            <div class="card-body position-relative zindex-2">
             <%-- <h2 class="card-title pb-3 mb-4">Contact us for Custom and Bulk Ordering</h2>--%>
              <form class="row g-4 needs-validation" novalidate>
                <div class="col-12">
                  <label for="fn" class="form-label fs-base">Full name</label>
                  <input type="text" class="form-control form-control-lg" id="fn" required>
                  <div class="invalid-feedback">Please enter your full name!</div>
                </div>
                <div class="col-12">
                  <label for="email" class="form-label fs-base" >Email address</label>
                  <input type="email" class="form-control form-control-lg" id="email" required>
                  <div class="invalid-feedback">Please provide a valid email address!</div>
                </div>
                <div class="col-12">
                  <label for="phoneFormat" class="form-label fs-base" id="phone">Phone</label>
                  <input type="tel" class="form-control form-control-lg" id="phoneFormat" data-format='{"numericOnly": true, "delimiters": ["+1 ", " ", " "], "blocks": [0, 3, 3, 2]}' placeholder="+1 ___ ___ __">
                </div>
                <div class="col-12">
                  <label for="cn" class="form-label fs-base">Company Name</label>
                  <input type="text" class="form-control form-control-lg" id="cn" required>
                  <div class="invalid-feedback">Please enter your Company Name!</div>
                </div>
                <div class="col-12">
                  <label for="message" class="form-label fs-base">Message</label>
                  <textarea class="form-control form-control-lg" id="message" ></textarea>
                </div>
               
             
                <div class="col-12 pt-2 pt-sm-3">
                  <button class="btn btn-lg btn-primary w-100 w-sm-auto" onclick="onSubmitMessage()">Submit</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="position-absolute bottom-0 start-0 w-100 bg-light" style="height: 8rem;"></div>
  </section>
    
   <%-- WHY WORK WITH US--%>
      <%--<section class="container pb-md-4 pb-sm-4">
           <h2 class="h1 text-center pb-5">Why Work With Us</h2>
    <!-- Row 1 -->
    <div class="row align-items-lg-center pb-5 mb-2 mb-lg-4 mb-xl-5 pt-4">
      <div class="col-md-6 mb-4 mb-md-0">
        <img src="assets/img/cpay.jpg" class="rounded-3" alt="Image">
      </div>
      <div class="col-md-6">
        <div class="ps-xl-5 ms-md-2 ms-lg-4">
          <h2 class="h2 mb-3 mb-sm-4">Competitive Pay</h2>
          <p class="fs-md fw-500 mb-4 mb-lg-5">We might be a young business, but our compensation is still competitively rich for employees when compared to industry veterans. 
              We understand that our success derives directly from our team, which is why we’re committed to the success of our team members.</p>
          
        </div>
      </div>
    </div>

    <!-- Row 2 -->
    <div class="row align-items-lg-center pt-md-3 pb-5 mb-2 mb-lg-4 mb-xl-5">
      <div class="col-md-6 order-md-2 mb-4 mb-md-0">
        <img src="assets/img/growth.jpg" class="rounded-3" alt="Image">
      </div>
      <div class="col-md-6 order-md-1">
        <div class="pe-xl-5 me-md-2 me-lg-4">
          <h2 class="h2 mb-3 mb-sm-4">Exciting Growth</h2>
          <p class="fs-md fw-500 mb-3 mb-sm-4">Techlok Solutions is a startup with an exciting growth trajectory. 
              We’ve already cemented ourselves as the quickest-growing and most unique business within the space. 
              When you work with us, you’re getting in on this exciting growth early for a greater return. </p>
          
        </div>
      </div>
    </div>
  </section>--%>
           <%-- <section class="container pb-5 mb-3 mb-md-4 mb-lg-3 justifyi-content-center mt-3">
        <h2 class="h1 text-center ">Why work with us</h2>
        <div class="row align-items-lg-center align-items-center">
          <div class="col-sm-6 col-lg-6 col mt-4">
            <div class="ps-lg-4 mb-2 mt-2 mb-md-2">
              <div class="text-center text-lg-center pb-2 mb-4 mb-xl-3">
                <img src="assets/img/services/single/icons/05.svg" class="d-inline-block" width="56" alt="Icon">
                <h3 class="h4 mb-4">Competitive Pay</h3>
                <p class="fs-md mb-0 text-start">We might be a young business, but our compensation is still competitively rich for employees when compared to industry veterans. 
                    We understand that our success derives directly from our team, which is why we’re committed to the success of our team members. </p>
              </div>
           
            </div>
            </div>
          <div class="col-sm-6 col-lg-6 col mt-4">
              <div class="ps-lg-4 mb-2 mt-2 mb-md-2">
             <div class="text-center text-lg-center pb-2 mb-4 mb-xl-3">
                <img src="assets/img/services/single/icons/02.svg" class="d-inline-block" width="56" alt="Icon">
                <h3 class="h4 mb-4">Exciting Growth</h3>
                <p class="fs-md mb-0 text-start">Techlok Solutions is a startup with an exciting growth trajectory.
                   We’ve already cemented ourselves as the quickest-growing and most unique business within the space.
                    When you work with us, you’re getting in on this exciting growth early for a greater return. 
                </p>
              </div>
          </div>
            
            </div>
          </div>
     
      </section>--%>

  <!-- Branches -->
  <section class="container py-2 py-lg-4 py-xl-5 mb-2 mb-md-3">
    <div class="row py-5">
      <div class="col-lg-6 mb-5 mb-lg-0">
        <div class="d-flex flex-column h-100 shadow-sm rounded-3 overflow-hidden">
          <iframe class="d-block h-100" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2939.855450200705!2d-83.20753698422473!3d42.53712523189313!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8824c652f472052d%3A0xef422a5ebd81b550!2s!5e0!3m2!1sen!2sph!4v1662120302398!5m2!1sen!2sph" style="border: 0; min-height: 300px;" allowfullscreen="" loading="lazy"></iframe>
        </div>
      </div>
      
      <div class="col-lg-5 offset-lg-1 pt-lg-5">
        <h2 class="h4 mb-4">Main Office</h2>
        <ul class="list-unstyled pb-2 pb-lg-0 mb-4 mb-lg-5">
          <li class="d-flex pb-1 mb-2">
            <i class="bx bx-map text-primary fs-xl me-2" style="margin-top: .125rem;"></i>
            Techlok Solutions, LLC 33717 Woodward Ave.#588 <br /> Birmingham, MI 48009
          </li>
          
          <li class="d-flex pb-1 mb-2">
            <i class="bx bx-phone-call text-primary fs-xl me-2" style="margin-top: .125rem;"></i>
           <a class="text-primary" href="tel:(406) 555-0120">(406) 555-0120</a> 
          </li>
              <li class="d-flex pb-1 mb-2">
           <i class="bx bx-envelope text-primary fs-xl me-2" style="margin-top: .125rem;"></i>
           <a class="text-primary" href="mailto:contact-us@laplok.com" > contact-us&#64;laplok.com</a>
          </li>
          <li class="d-flex">
            <i class="bx bx-time-five text-primary fs-xl me-2" style="margin-top: .125rem;"></i>
            <div>
              <strong class="text-nav">Mon - Fri</strong>: 8:30 am  - 5:00 pm
            </div>
          </li>
        </ul>
       
       <%-- <div class="d-flex pt-1 pt-md-3 pt-xl-4">
          <a href="#" class="btn btn-icon btn-secondary btn-facebook me-3">
            <i class="bx bxl-facebook"></i>
          </a>
          <a href="#" class="btn btn-icon btn-secondary btn-instagram me-3">
            <i class="bx bxl-instagram"></i>
          </a>
          <a href="#" class="btn btn-icon btn-secondary btn-twitter me-3">
            <i class="bx bxl-twitter"></i>
          </a>
          <a href="#" class="btn btn-icon btn-secondary btn-youtube me-3">
            <i class="bx bxl-youtube"></i>
          </a>
          <a href="#" class="btn btn-icon btn-secondary btn-linkedin">
            <i class="bx bxl-linkedin"></i>
          </a>
        </div>--%>
      </div>
    </div>
  </section>

</asp:Content>
