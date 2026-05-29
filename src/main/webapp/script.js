function deleteFacility(){
    alert("Facility Deleted Successfully!");
}

function approveBooking(){
    alert("Booking Approved!");
}

function rejectBooking(){
    alert("Booking Rejected!");
}

function loginUser(){

    let role = document.getElementById("role").value;

    if(role === "Admin"){
        window.location.href = "addfacility.html";
    }
    else{
        window.location.href = "booking.html";
    }
}


function checkAvailability(){

    let result =
    document.getElementById("resultBox");

    result.innerHTML = `

    <div style="
    background:#eef3ff;
    padding:20px;
    border-radius:10px;">

        <h2>Facility Details</h2>

        <p>
        <b>Location:</b> Block A
        </p>

        <p>
        <b>Capacity:</b> 100 Persons
        </p>

        <p>
        <b>Facilities:</b>
        Projector, AC
        </p>

        <br>

        <h3>
        Available Slots Today
        </h3>

        <p>9 AM - 11 AM</p>

        <p>2 PM - 4 PM</p>

        <p>5 PM - 7 PM</p>

        <br>

        <h3 style="color:green;">

        Facility Available ✔

        </h3>

        <button
        onclick="bookNow()">

        Book Now

        </button>

    </div>
    `;
}

function bookNow(){

    let result =
    document.getElementById("resultBox");

    result.innerHTML = `

    <div style="
    background:#d4edda;
    padding:20px;
    border-radius:10px;">

        <h2>
        Booking Confirmed ✔
        </h2>

        <p>
        <b>Booking ID:</b>
        BK101
        </p>

        <p>
        <b>Status:</b>
        Booked
        </p>

        <p>
        <b>Facility:</b>
        Conference Hall
        </p>

    </div>
    `;
}