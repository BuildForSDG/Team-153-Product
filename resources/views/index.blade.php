@extends('layouts.app')

@section('content')


{{-- Jumbotron --}}
<div class="jumbotron jumbotron-fluid text-center text-white" style="background-image: url('img/bg1.jpg');">
    <div class="container">
        <h1 class="display-3">Equality and Transparency</h1>
        <p class="lead">AID for those who need neeed it!.</p>
        <hr class="my-4 bg-white">
        <a class="btn btn-primary btn-lg" href="#" role="button">Donate</a>
        <a class="btn btn-primary btn-lg" href="#" role="button">Apply</a>
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
        
        <a href="#" class="btn btn-success btn-md" > Read More</a>
      </div>
      <div class="col-sm-3 border-right">
        <h3>Grants</h3>
        <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 100%;">
        <i class="fas fa-hands-helping fa-10x mb-3"></i>
        <p>This is a tool nonprofits use to address important issues within their communities.</p>
          <a href="#" class="btn btn-success btn-md" > Read More</a>
        
      </div>

      <div class="col-sm-3 border-right">
        <h3>Scholarships</h3>
        <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 100%;">
        <i class="fas fa-graduation-cap fa-10x mb-3"></i>
        <p>Scholarships provide these students with the opportunity to source money for the education.</p>
        <a href="#" class="btn btn-success btn-md" > Read More</a>
      </div>

      <div class="col-sm-3 border-right">
        <h3>Donations</h3>
        <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 100%;">
        <i class="fas fa-funnel-dollar fa-10x mb-3"></i>
        <p>Donating is a selfless act. One of the major positive effects of donating money to charity is simply feeling good about giving.</p>
        <a href="#" class="btn btn-success btn-md" > Read More</a>
      </div>
    </div>
  </div>

{{-- The Amazing team --}}

<div class="container text-center">
    <hr class="my-4 bg-white">
    <h1 class="display-5">Our Amazing Team</h1>
    {{-- <i class="fab fa-angellist fa-10x"></i> --}}
    <hr class="my-4 bg-white">
</div>

<div class="container text-center">
    <div class="row">
            <div class="col-sm-3" style="width: 14rem;">
                <img src="{{asset('HomeTheme')}}/assets/img/team/basele.jpg" class="card-img-top mx-auto rounded-circle border border-success" alt="...">
                <div class="card-body">
                    <h4>Stephen Basele</h4>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a class="btn btn-dark btn-social mx-2 rounded-circle" href="#!"><i class="fab fa-twitter"></i></a>
                  <a class="btn btn-dark btn-social mx-2 rounded-circle" href="#!"><i class="fab fa-facebook-f"></i></a>
                  <a class="btn btn-dark btn-social mx-2 rounded-circle" href="#!"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
    

       
            <div class="col-sm-3" style="width: 14rem;">
                <img src="{{asset('HomeTheme')}}/assets/img/team/brian.jpg" class="card-img-top mx-auto rounded-circle border border-success" alt="...">
                <div class="card-body">
                    <h4>Brian Tum</h4>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a class="btn btn-dark btn-social mx-2 rounded-circle" href="#!"><i class="fab fa-twitter"></i></a>
                  <a class="btn btn-dark btn-social mx-2 rounded-circle" href="#!"><i class="fab fa-facebook-f"></i></a>
                  <a class="btn btn-dark btn-social mx-2 rounded-circle" href="#!"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
        

        
            <div class="col-sm-3" style="width: 14rem;">
                <img src="{{asset('HomeTheme')}}/assets/img/team/1.jpg" class="card-img-top mx-auto rounded-circle border border-success" alt="...">
                <div class="card-body">
                    <h4>Daniel Kimani</h4>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a class="btn btn-dark btn-social mx-2 rounded-circle" href="#!"><i class="fab fa-twitter"></i></a>
                  <a class="btn btn-dark btn-social mx-2 rounded-circle" href="#!"><i class="fab fa-facebook-f"></i></a>
                  <a class="btn btn-dark btn-social mx-2 rounded-circle" href="#!"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
       

      
            <div class="col-sm-3" style="width: 14rem;">
                <img src="{{asset('HomeTheme')}}/assets/img/team/fred.jpg" class="card-img-top mx-auto rounded-circle border border-success" alt="...">
                <div class="card-body">
                    <h4>Fred Nyakagwa</h4>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
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
    <hr class="my-4 bg-white">
    <h1 class="display-5">Our Success Stories</h1>
    {{-- <i class="fab fa-angellist fa-10x"></i> --}}
    <hr class="my-4 bg-white">
</div>

<div class="container">
    <div class="row">
      <div class="col-sm-4">
        <h3>John M</h3>
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



  




@endsection