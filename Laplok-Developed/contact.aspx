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
                  <a class="btn-link text-decoration-none text-primary" href="mailto:contact-us@laplok.com">Send a message</a>
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
                <div class="text-primary fw-medium btn-lg px-0">
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
                <h2 class="h4 pb-1 mb-2 mt-2">Logoed LapLoks Available</h2>
                
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
                  <asp:TextBox ID="fullnameText" runat="server" CssClass="form-control form-control-lg" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                        runat="server"
                        ErrorMessage="Please enter your full name!" 
                        CssClass="invalid-feedback" 
                        ControlToValidate="fullnameText" 
                        SetFocusOnError="true" 
                        Display="Dynamic"
                        ValidationGroup="ContactValidation"
                        ></asp:RequiredFieldValidator>
                </div>
                <div class="col-12">
                  <label for="textEmail" class="form-label fs-base" >Email address</label>
                    <asp:TextBox ID="textEmail" runat="server" type="email" CssClass="form-control form-control-lg"></asp:TextBox>
                    <!--Validates if Empty-->
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                        runat="server"
                        ErrorMessage="Please enter a valid email address!" 
                        CssClass="invalid-feedback" 
                        ControlToValidate="textEmail" 
                        SetFocusOnError="true" 
                        Display="Dynamic" 
                        ValidationGroup="ContactValidation" 
                        ></asp:RequiredFieldValidator>

                    <!--Validates if Valid format-->
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Please provide a valid email address!"  
                        CssClass="invalid-feedback" 
                        ControlToValidate="textEmail"
                        SetFocusOnError="true" 
                        Display="Dynamic" 
                        ValidationExpression="^\S+@\S+$" ValidationGroup="ContactValidation" ></asp:RegularExpressionValidator>
                </div>
                <div class="col-12">
                  <label for="phoneFormat" class="form-label fs-base" id="phone">Phone</label>
                      <asp:TextBox ID="phoneFormat" runat="server" CssClass="form-control form-control-lg" placeholder="+1 ___ ___ __" data-format='{"numericOnly": true, "delimiters": ["+1 ", " ", " "], "blocks": [0, 3, 3, 2]}'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                        runat="server"
                        ErrorMessage="Please enter a valid phone number!" 
                        CssClass="invalid-feedback" 
                        ControlToValidate="phoneFormat" 
                        SetFocusOnError="true" 
                        Display="Dynamic" 
                        ValidationGroup="ContactValidation"
                        ></asp:RequiredFieldValidator>  
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        CssClass="invalid-feedback"  
                        ErrorMessage="Phone number is not valid!"
                        ControlToValidate="phoneFormat"
                        Type="Integer"
                        Operator="DataTypeCheck"
                         Display="Dynamic"
                         SetFocusOnError="true"
                        ValidationGroup="ContactValidation"></asp:CompareValidator>
                </div>
                <div class="col-12">
                  <label for="cn" class="form-label fs-base">Company Name</label>
                   <asp:TextBox ID="textCompany" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                        runat="server"
                        ErrorMessage="Please enter your company's name" 
                        CssClass="invalid-feedback" 
                        ControlToValidate="textCompany" 
                        SetFocusOnError="true" 
                        Display="Dynamic"
                        ValidationGroup="ContactValidation" 
                        ></asp:RequiredFieldValidator>
                </div>
                <div class="col-12">
                  <label for="message" class="form-label fs-base">Message</label>
                 <asp:TextBox ID="textMessage" runat="server" TextMode="MultiLine" CssClass="form-control form-control-lg"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                        runat="server"
                        ErrorMessage="Please enter your message!" 
                        CssClass="invalid-feedback" 
                        ControlToValidate="textMessage" 
                        SetFocusOnError="true" 
                        Display="Dynamic" 
                        ValidationGroup="ContactValidation" 
                        ></asp:RequiredFieldValidator>
                </div>
               
             
                <div class="col-12 pt-2 pt-sm-3 row">
                    <div class="col-4">
                    <asp:Button ID="submitBtn" 
                        runat="server" 
                        Text="Submit" 
                        CssClass="btn btn-lg btn-primary w-100 w-sm-auto recapBtn g-recaptcha" 
                        ValidationGroup="ContactValidation" 
                        OnClick="submitBtn_Click"
                        UseSubmitBehavior="false"
                        data-sitekey="6LcqS0AjAAAAAO064-CfrQmT_oEnrEBT8Ue6DwWA"
                        data-callback="onSubmit"
                        data-action="submit"
                        />
                    </div>  
                    <div class="col-8 ps-1">
                        <asp:Panel ID="AlertSuccessContact" runat="server" CssClass="text-primary italic pb-2 pt-2 mt-1" role="alert" Visible="false">
                            <i class='bx bx-check fs-lg'> Message Sent!</i></asp:Panel>
                        </div>
                    </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="position-absolute bottom-0 start-0 w-100 bg-light" style="height: 8rem;"></div>
  </section>
    
  
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
            33717 Woodward Ave.#588 <br /> Birmingham, MI 48009
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
      </div>
    </div>
  </section>

</asp:Content>
