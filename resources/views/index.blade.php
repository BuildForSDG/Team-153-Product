@extends('layouts.app')

@section('content')


{{-- Jumbotron --}}
<div class="jumbotron jumbotron-fluid text-center text-white" style=" background-color: #212529; background-image: url('img/map-image.png');">
    
    <div class="container">
        <h1 class="display-3"><span style="text-shadow: 1px 1px #FF0000;">Equality and Transparency</span></h1>
        <p class="lead"><span style="text-decoration: underline">AidPedia</span> is an application that seeks to automate the process of disbursing aid, 
            hence reducing the bottlenecks created by humans and reducing <span style="text-decoration: line-through;">corruption</span></p>
        <hr class="my-4 bg-danger">
        <a class="btn btn-primary btn-lg mr-3" href="#" role="button">Donate</a>
        <a class="btn btn-primary btn-lg mr-3" href="#" role="button">Apply</a>
        <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
    </div>
  </div>

  {{-- Articles --}}
<div class="container mb-3 text-center">
    <div class="row">
        <div class="col-sm-3 border-right border-left">
            <h3>Bursary</h3>
            <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 100%;">
            <i class="fas fa-school fa-10x mb-3"></i>
            <p>Bursaries can have wider-ranging benefits by helping to drive attainment and encourage retention among non-traditional students.</p>          
            <a href="/bursary" class="btn btn-success btn-md" > Read More</a>
        </div>

        <div class="col-sm-3 border-right">
            <h3>Grants</h3>
            <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 100%;">
            <i class="fas fa-hands-helping fa-10x mb-3"></i>
            <p>This is a tool nonprofits use to address important issues within their communities.</p>
            <br>
          <a href="/grants" class="btn btn-success btn-md" > Read More</a>
        </div>

      <div class="col-sm-3 border-right">
            <h3>Scholarships</h3>
            <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 100%;">
            <i class="fas fa-graduation-cap fa-10x mb-3"></i>
            <p>Scholarships provide these students with the opportunity to source money for the education.</p>
            <br>
            <a href="/scholarships" class="btn btn-success btn-md" > Read More</a>
      </div>

      <div class="col-sm-3 border-right">
            <h3>Donations</h3>
            <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 100%;">
            <i class="fas fa-funnel-dollar fa-10x mb-3"></i>
            <p>Donating is a selfless act. One of the major positive effects of donating money to charity is simply feeling good about giving.</p>
            <a href="/donations" class="btn btn-success btn-md" > Read More</a>
      </div>
    </div>
  </div>

{{-- The Amazing team --}}

<div class="container text-center">
    <hr class="my-4 bg-danger">
    <h1 class="display-5">Our Amazing Team</h1>
    {{-- <i class="fab fa-angellist fa-10x"></i> --}}
    <hr class="my-4 bg-danger">
</div>

<div class="container text-center">
    <div class="row">
            <div class="col-sm-3" style="width: 14rem;">
                <img src="{{asset('HomeTheme')}}/assets/img/team/basele.jpg" class="card-img-top mx-auto rounded-circle border border-success" alt="...">
                <div class="card-body">
                    <h4>Stephen Basele</h4>
                  <p class="card-text"> A software Engineer with over 7 years of experience in building solutions. 
                      A project manager who believes in building people to build solutions.</p>
                  <a class="btn btn-dark btn-social mx-2 rounded-circle" href="#!"><i class="fab fa-twitter"></i></a>
                  <a class="btn btn-dark btn-social mx-2 rounded-circle" href="#!"><i class="fab fa-facebook-f"></i></a>
                  <a class="btn btn-dark btn-social mx-2 rounded-circle" href="#!"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
    

       
            <div class="col-sm-3" style="width: 14rem;">
                <img src="{{asset('HomeTheme')}}/assets/img/team/brian.jpg" class="card-img-top mx-auto rounded-circle border border-success" alt="...">
                <div class="card-body">
                    <h4>Brian Tum</h4>
                  <p class="card-text">A digital marketer as well as a programmer. 
                      Motivated and determined to bring sustainable, accoutable and valuable digital products and services. 
                      We are the change we want.</p>
                  <a class="btn btn-dark btn-social mx-2 rounded-circle" href="#!"><i class="fab fa-twitter"></i></a>
                  <a class="btn btn-dark btn-social mx-2 rounded-circle" href="#!"><i class="fab fa-facebook-f"></i></a>
                  <a class="btn btn-dark btn-social mx-2 rounded-circle" href="#!"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
        

        
            <div class="col-sm-3" style="width: 14rem;">
                <img src="{{asset('HomeTheme')}}/assets/img/team/dan.jpg" class="card-img-top mx-auto rounded-circle border border-success" alt="...">
                <div class="card-body">
                    <h4>Daniel Kimani</h4>
                  <p class="card-text">I am a passionate business developer with over five years of experience, Frontend Developer with one year of experience. 
                      Founder <a href="https://www.ohospital.co.ke/">Ohospital</a> and <a href="https://www.suhadetechvest.com/">Suhade Tech and Investment</a></p>
                  <a class="btn btn-dark btn-social mx-2 rounded-circle" href="#!"><i class="fab fa-twitter"></i></a>
                  <a class="btn btn-dark btn-social mx-2 rounded-circle" href="#!"><i class="fab fa-facebook-f"></i></a>
                  <a class="btn btn-dark btn-social mx-2 rounded-circle" href="#!"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
       

      
            <div class="col-sm-3" style="width: 14rem;">
                <img src="{{asset('HomeTheme')}}/assets/img/team/fred.jpg" class="card-img-top mx-auto rounded-circle border border-success" alt="...">
                <div class="card-body">
                    <h4>Fred Nyakagwa</h4>
                  <p class="card-text">Full-Stack Web Developer - 5 years in HMTL5, CSS3, JS with 
                      Bootstrap. Backend development with Node.JS, PHP and Python. Am passionate about coding and going places.</p>
                  <a class="btn btn-dark btn-social mx-2 rounded-circle" href="#!"><i class="fab fa-twitter"></i></a>
                  <a class="btn btn-dark btn-social mx-2 rounded-circle" href="#!"><i class="fab fa-facebook-f"></i></a>
                  <a class="btn btn-dark btn-social mx-2 rounded-circle" href="#!"><i class="fab fa-linkedin-in"></i></a>
                </div> 
            </div>            
        </div>      
    </div>
</div>

{{-- Success Stories aka testimonials --}}

<div class="container text-center">
    <hr class="my-4 bg-danger">
    <h1 class="display-5">Our Success Stories</h1>
    {{-- <i class="fab fa-angellist fa-10x"></i> --}}
    <hr class="my-4 bg-danger">
</div>

<div class="container">
    <div class="row">
      <div class="col-sm-4">
        <h3>John M.</h3>
        <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 100%;">
        <p><i>“Hey AIDPEDIA team, words cannot express how thankful I am to have been chosen as a scholarship recipient. 
            My education has always been of upmost importance to me, and to be rewarded in this way is very humbling. 
            This scholarship is an absolute answer to prayers, as life does not always go as we plan."</i> <strong> ~~ John.</strong></p>
    
      </div>
      <div class="col-sm-4">
        <h3>Onyango A.</h3>
        <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 100%;">
        <p><i>“Thank you a thousand times over for the Aidpedia Scholarship Award. 
            I can assure you the award will go toward great things. I am so very thankful to be able to go to Mombasa technical university
             and its ONLY because your services 
            such as yours that care for students so well.
            With Gratitude,"</i><strong> ~~ Onyi.</strong></p>
        
      </div>

      <div class="col-sm-4">
        <h3>Fatima S.</h3>
        <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 100%;">
        <p><i>Thank you for allowing me to continue my education with the help 
            of the Aidpedia Scholarship for the 2020-2021 academic school year. I am blessed that God has been providing me the money
             to further my education and pursue my dream. I can’t express 
            how grateful I am to receive this scholarship. Thank you again for supporting me through college.
            "</i> <strong> ~~ Fatima.</strong></p>
      </div>
    </div>
</div>

{{-- Contact Form --}}


<div class="container text-center">
    <hr class="my-4 bg-danger">
    <h1 class="display-5">Contact Us</h1>
    {{-- <i class="fab fa-angellist fa-10x"></i> --}}
    <hr class="my-4 bg-danger">
</div>

<section class="page-section" id="contact">
    <div class="container">
        <form id="contactForm" name="sentMessage" novalidate="novalidate">
            <div class="row align-items-stretch mb-5">
                <div class="col-md-6">
                    <div class="form-group">
                        <input class="form-control" id="name" type="text" placeholder="Your Name *" required="required" data-validation-required-message="Please enter your name." />
                        <p class="help-block text-danger"></p>
                    </div>
                    <div class="form-group">
                        <input class="form-control" id="email" type="email" placeholder="Your Email *" required="required" data-validation-required-message="Please enter your email address." />
                        <p class="help-block text-danger"></p>
                    </div>
                    <div class="form-group">
                        <input class="form-control" id="phone" type="tel" placeholder="Your Phone *" required="required" data-validation-required-message="Please enter your phone number." />
                        <p class="help-block text-danger"></p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group form-group-textarea">
                        <textarea rows="5" class="form-control" placeholder="Your Message *" required="required" data-validation-required-message="Please enter a message."></textarea>
                        <p class="help-block text-danger"></p>
                    </div>
                </div>
            </div>
            <div class="text-center">
                <button class="btn btn-primary btn-xl" id="sendMessageButton" type="submit">Send Message</button>
            </div>
        </form>
    </div>
</section>

@endsection