<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="howlaplok.aspx.cs" Inherits="Laplok_Developed.howlaplok" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <!-- Video + Title split section -->
   <section class="container-fluid position-relative px-0 pt-5 mt-2 ">
    <div class="row g-0">
      <div class="col-xl-7 col-lg-6 pe-lg-5  ">
        <div class="d-flex h-100 pe-xl-4">
          <!-- <video class="w-100" autoplay muted loop controls style="object-fit: cover;">
            <source src="assets/img/landing/conference/LapLok_Notext.mp4" type="video/mp4">
          </video> -->
          <iframe class="w-100 ratio-16x9 h-100px" style="object-fit: cover;" src="https://www.youtube.com/embed/B8xlwmsuVpQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            



        </div>
      
      </div>
      
      <div class="col-xl-5 col-lg-6 position-relative py-5">
        <img src="assets/img/landing/conference/hero-bg.png" class="position-absolute top-50 translate-middle-y ms-lg-n4" width="866" alt="Background shapes">
        <div class="position-relative zindex-5 text-center text-lg-start px-3 px-lg-0 py-xl-4 py-xxl-5 mt-lg-3 mx-auto mx-lg-0" style="max-width: 530px;">

          <h1 class="display-4 pb-lg-3 mb-3">How LapLok works</h1>
          <div class="d-flex justify-content-center justify-content-lg-start text-start mb-2">
            <div class="fs-xl">LapLok is the ultimate way to lock down, secure, and protect your laptop wherever you&#39;re working. Who
knew safety could be this convenient, lightweight, and easy to use? We did!</div>
             
          </div>
          <div class="fs-xl mt-1">Watch this quick video for clear instructions on how to use this powerful and dynamic device protection
device or simply scroll down for step-by-step instructions.</div>
          <a href="#instruction" class="d-table text-decoration-none w-auto py-4 text-primary" data-scroll data-scroll-offset="70">
            <span class="d-flex align-items-center">
              Scroll for Instructions
              <i class="bx bx-down-arrow-circle fs-3 ms-2"></i>
            </span>
          </a>
        </div>
      </div>
    </div>
 
  </section>

  <section class="container pt-2 pt-lg-5 pb-5 mb-md-4 mb-lg-5">
    <h2 id="instruction" class="h1 text-center pb-3 pb-lg-4">Instructions</h2>

      <!-- Nav tabs -->
    <ul  class="nav nav-tabs flex-nowrap justify-content-lg-center overflow-auto pb-2 mb-3 mb-lg-4" role="tablist">
      <li class="nav-item" role="presentation">
        <a class="nav-link text-nowrap active" id="education-tab" data-bs-toggle="tab" data-bs-target="#education"  role="tab" aria-controls="education" aria-selected="true">
          Step 1
        </a>
      </li>
      <li class="nav-item" role="presentation">
        <a class="nav-link text-nowrap" id="ecommerce-tab" data-bs-toggle="tab" data-bs-target="#ecommerce"  role="tab" aria-controls="ecommerce" aria-selected="false">
          
          Step 2
        </a>
      </li>
      <li class="nav-item" role="presentation">
        <a class="nav-link text-nowrap" id="sports-tab" data-bs-toggle="tab" data-bs-target="#sports" role="tab" aria-controls="sports" aria-selected="false">
         
          Step 3
        </a>
      </li>
      <li class="nav-item" role="presentation">
        <a class="nav-link text-nowrap" id="construction-tab" data-bs-toggle="tab" data-bs-target="#construction" role="tab" aria-controls="construction" aria-selected="false">
         
          Step 4
        </a>
      </li>
      <li class="nav-item" role="presentation">
        <a class="nav-link text-nowrap" id="medicine-tab" data-bs-toggle="tab" data-bs-target="#medicine" role="tab" aria-controls="medicine" aria-selected="false">
        
          Step 5
        </a>
      </li>
      <li class="nav-item" role="presentation">
        <a class="nav-link text-nowrap" id="real-estate-tab" data-bs-toggle="tab" data-bs-target="#real-estate" role="tab" aria-controls="real-estate" aria-selected="false">
        
          Step 6
        </a>
      </li>
    </ul>



      <!-- Tab panes -->
    <div class="tab-content bg-secondary rounded-3 py-4">
 
      <div class="tab-pane fade show active" id="education" role="tabpanel" aria-labelledby="education-tab">
        <div class="row align-items-center pt-3 pt-sm-4 pt-md-0 px-3 px-sm-4 px-lg-0">
          <div class="col-lg-4 col-md-5 offset-lg-1 text-center text-md-start">
            <h3 class="mb-lg-4">Install semi-permanent mounting arm</h3>
            <p>First, make sure that your LapLok has a clean surface that you can adhere the mounting arm to. Clean your device with the included cleaning wipe & primer. This assures that good contact will be made. </p>
            <p>Then, install semi-permanent adhesive mounting arm.</p>
          
           
              <a class="btn btn-primary btnNext">Next</a>
            
          </div>
          <div class="col-lg-6 col-md-7 mt-2 mb-3 mt-md-3">
            <img src="assets/img/services/industries/1.jpg" class="d-block rounded-3 my-lg-2 mx-auto me-md-0" width="564" alt="Image">
          </div>
        </div>
      </div>

      
      <div class="tab-pane fade" id="ecommerce" role="tabpanel" aria-labelledby="ecommerce-tab">
        <div class="row align-items-center pt-3 pt-sm-4 pt-md-0 px-3 px-sm-4 px-lg-0">
          <div class="col-lg-4 col-md-5 offset-lg-1 text-center text-md-start">
            <h3 class="mb-lg-4">Swing out the mounting arm</h3>
            <p>Take the mounting arm and swing it out to give the space for your LapLok to connect.</p>
       
             <a class="btn btn-primary btnPrevious">Back</a>
             <a class="btn btn-primary btnNext">Next</a>
              
          </div>
          <div class="col-lg-6 col-md-7 mt-2 mb-3 mt-md-3">
            <img src="assets/img/services/industries/2.jpg" class="d-block rounded-3 my-lg-2 mx-auto me-md-0" width="564" alt="Image">
          </div>
        </div>
      </div>

      
      <div class="tab-pane fade" id="sports" role="tabpanel" aria-labelledby="sports-tab">
        <div class="row align-items-center pt-3 pt-sm-4 pt-md-0 px-3 px-sm-4 px-lg-0">
          <div class="col-lg-4 col-md-5 offset-lg-1 text-center text-md-start">
            <h3 class="mb-lg-4">Adjust the lower arm to the height of the table</h3>
            <p>Take your LapLok and measure the surface height that you wish to install it on. Then, adjust the lower arm to the height of the table. You will be moving this later on to ensure a safe connection.</p>
             <a class="btn btn-primary btnPrevious">Back</a>
             <a class="btn btn-primary btnNext">Next</a>
          </div>
          <div class="col-lg-6 col-md-7 mt-2 mb-3 mt-md-3">
            <img src="assets/img/services/industries/3.jpg" class="d-block rounded-3 my-lg-2 mx-auto me-md-0" width="564" alt="Image">
          </div>
        </div>
      </div>

     
      <div class="tab-pane fade" id="construction" role="tabpanel" aria-labelledby="construction-tab">
        <div class="row align-items-center pt-3 pt-sm-4 pt-md-0 px-3 px-sm-4 px-lg-0">
          <div class="col-lg-4 col-md-5 offset-lg-1 text-center text-md-start">
            <h3 class="mb-lg-4">Put the mount arm into the mouth of the LapLok</h3>
            <p>Take the arm that's attached to your computer and place LapLok into the mount of the locking arm.  </p>
             <a class="btn btn-primary btnPrevious">Back</a>
             <a class="btn btn-primary btnNext">Next</a>
          </div>
          <div class="col-lg-6 col-md-7 mt-2 mb-3 mt-md-3">
            <img src="assets/img/services/industries/4.jpg" class="d-block rounded-3 my-lg-2 mx-auto me-md-0" width="564" alt="Image">
          </div>
        </div>
      </div>

      
      <div class="tab-pane fade" id="medicine" role="tabpanel" aria-labelledby="medicine-tab">
        <div class="row align-items-center pt-3 pt-sm-4 pt-md-0 px-3 px-sm-4 px-lg-0">
          <div class="col-lg-4 col-md-5 offset-lg-1 text-center text-md-start">
            <h3 class="mb-lg-4">Raise the lower arm to the bottom of the table</h3>
            <p>Take the lower arm of LapLok and raise it to the same level of the surface you're securing it to. </p>
            <a class="btn btn-primary btnPrevious">Back</a>
             <a class="btn btn-primary btnNext">Next</a>
          </div>
          <div class="col-lg-6 col-md-7 mt-2 mb-3 mt-md-3">
            <img src="assets/img/services/industries/5.jpg" class="d-block rounded-3 my-lg-2 mx-auto me-md-0" width="564" alt="Image">
          </div>
        </div>
      </div>

   
      <div class="tab-pane fade" id="real-estate" role="tabpanel" aria-labelledby="real-estate-tab">
        <div class="row align-items-center pt-3 pt-sm-4 pt-md-0 px-3 px-sm-4 px-lg-0">
          <div class="col-lg-4 col-md-5 offset-lg-1 text-center text-md-start">
            <h3 class="mb-lg-4">Pull the top Laplok down to secure</h3>
            <p>When your LapLok is in place, pull down to secure. It's that easy. </p>
               <a class="btn btn-primary btnPrevious">Back</a>
          </div>
          <div class="col-lg-6 col-md-7 mt-2 mb-3 mt-md-3">
            <img src="assets/img/services/industries/6.jpg" class="d-block rounded-3 my-lg-2 mx-auto me-md-0" width="564" alt="Image">
          </div>
        </div>
      </div>
    </div>
  </section>

</asp:Content>
