 <style>
    .all{
    background-color: black;
    border-radius: 10px;
}
.page-section{
    background-color: black;
    color: white;
}
 </style>
 <!-- Masthead-->
        <header class="masthead">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-10 all mb-4" >
                    	 <h1 class="text-uppercase text-white font-weight-bold">About Us</h1>
                    </div>
                </div>
            </div>
        </header>

    <section class="page-section">
        <div class="container text-white">

    <?php  echo  html_entity_decode($_SESSION['setting_about_content']) ?>        
            
        </div>
        </section>