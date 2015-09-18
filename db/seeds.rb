# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

roles = Role.create([
  {title: 'admin'},
  {title: 'user'},
  {title: 'author'}
]) if Role.count == 0

user = User.first

if user && Article.count == 0
  article = Article.create([
    {title: 'The Intel Xeon D Review: Performance Per Watt Server SoC Champion?',
    text: '<p>The days that Intel neglected the low end of the server market are over. 
      The most affordable Xeon used to be the Xeon E3: a desktop CPU with a few server 
      features enabled and with a lot of potential limitations unless you could afford 
      the E5 Xeons. The gap, both in performance and price, between Xeon E3 and 
      E5 is huge. For example - a Xeon E5 can address up to 768 GB and the Xeon E3 
      up to 32 GB. A Xeon E5 server could contain up to 36 cores, whereas Xeon E3 
      was limited to a paltry four. And the list is long: most RAS features, 
      virtualization features were missing from the E3, along with a much smaller 
      L3-cache. On those terms, the Xeon E3 simply did not feel very "pro". </p> 

      <p>Luckily, the customers in the ever expanding hyperscale market 
      (Facebook, Amazon, Google, Rackspace and so on) need Xeons at a very 
      large scale and have been demanding a better chip than the Xeon E3. 
      Just a few months ago, the wait was over: Xeon D fills the gap between 
      the Xeon E3 and the Xeon E5. Combining the most advanced 14 nm Broadwell
       cores, a dual 10 gigabit interface, a PCIe 3.0 root with 24 lanes, USB 
       and SATA controllers in one integrated SoC, the Xeon D has excellent specs 
       on paper for everyone who does not need the core count of the Xeon E5 servers, 
       but who simply needs more than the Xeon E3.</p>',
    user_id: user.id,
    photo: 'XeonD_naked_678x452.png',
    photo_small: 'XeonD_naked_carousel.png'},

    {title: 'Intel’s Core M Strategy: CPU Specifications for 9mm Fanless Tablets and 2-in-1 Devices',
    text: '<p>Continuing our coverage of Intel’s 14nm Technology, another 
       series of press events held by Intel filled out some of the missing 
       details behind the strategy of their Core M platform. Core M is the 
       moniker for what will be the Broadwell-Y series of processors, 
       following on from Haswell-Y, and it will be the first release of 
       Intel’s 14nm technology. The drive to smaller, low powered fanless 
       devices that still deliver a full x86 platform as well as the performance beyond 
       that of a smartphone or tablet is starting to become a reality.
       Even reducing the size of the CPU package in all dimensions to allow for 
       smaller devices, including reducing the z-height from 1.5mm to 1.05 mm 
       is part of Intel’s solution, giving a total die area 37% smaller 
       than Haswell-Y.</p> 

      <p>The first wave of three Core M parts will all be dual core flavors,
       with HD 5300 graphics and all within a 4.5W TDP.</p>
      <p>The top of the line processor will be called the Core M-5Y70, 
       which is a bit of a mouthful but the name breaks down similarly 
       to Intel’s main Core series. ‘5’ is similar to i5, giving us a dual-core processor 
       with Hyper-Threading; ‘Y’ is for Broadwell-Y; and ‘70’ gives its position in
       the hardware stack.</p>
      <p>The CPU will leverage both processor graphics and CPU Turbo Boost, 
       allowing each of them to turbo at different times and different rates depending 
       on the workload and overall power usage. Of particulary interest is that the 5Y70 
       features a base clock of 1.1 GHz, with turbo for both single-core and dual-core use
       listed as up to 2.6 GHz. The new HD 5300 GPU similarly has a 100 MHz base frequency
       with an 850 MHz turbo. The 5Y70 is different from the other two models in both clock 
       speeds and features, as it will be part of Intel’s vPro program and 
       also supports Intel TXT.</p>
      <p>The other two processors in the stack are the 5Y10a and 5Y10, with
       dual-core + HT configurations and 800 MHz base frequency with turbo up to 2.0 GHz. 
       There does not appear to be any major difference between the two parts, 
       though Intel\'s presentation notes that the 5Y10 supports "4W Config Down TDP" 
       (cTDP Down). The graphics is clocked slightly lower on the turbo, giving 800 MHz.</p>
       <p>It\'s interesting to note that Intel informed us that the 1k unit 
       pricing will be the same for all three processors: $281. Obviously 
       these chips are going to end up in hybrids, tablets, and laptops that 
       come pre-built, so the actual pricing will vary by OEM and whatever 
       deals they have with Intel. But in general, Intel seems to be saying 
       that OEMs can choose any of the three chips based on their power/thermal targets.</p>',
    user_id: user.id,
    photo: 'Core-M_678x452.jpg',
    photo_small: 'Core-M_678x452_carousel.jpg'},
    
    {title: 'Hands On With the iPhone 6s and iPhone 6s Plus',
    text: '<p>While the iPhone 6s and 6s Plus are relatively the same
       phone on the surface compared to the iPhone 6 and 6 Plus, 
       in just about half an hour of hands-on time I actually discovered there\'s 
       quite a bit different that wasn’t even mentioned in the announcement, in 
       addition to discovering the value of various aspects of what was discussed in the announcement.</p> 

      <p>The first, and probably most important change to the iPhone 6s from a 
      user experience perspective this generation is going to be 3D Touch. 
      After using it, I’m sure this will be widely adopted throughout the smartphone industry 
      in about 18-24 months after the iPhone 6s. One of the major user experience problems 
      I have with smartphones that isn’t necessarily obvious to most people is that there are a 
      lot of actions that just break the flow of fluid user interaction. This may seem like a 
      petty complaint, but a long press is probably the single most frustrating aspect of a 
      smartphone user experience today. On Android, the standard for a long-press is usually 
      around 500ms. This doesn’t seem like a long time, but if done repeatedly or if under 
      time pressure half a second can start to feel like an eternity.</p>

      <p>Another kind of flow-breaking that exists in smartphone user experience today 
      is what I’d call ping-ponging. In short, this is the kind of user interaction 
      in which you’re constantly opening one app to view one small thing before switching 
      back to the application your focus is on. This is actually objectively bad for user 
      focus, because humans are fundamentally not capable of true multitasking. Instead of
      doing multiple things at the same time, we’re just rapidly switching back and forth 
      between tasks. Each context switch entails overhead, much like how making a CPU core
      switch processes invokes an overhead as state is saved and loaded.</p>
      <p>3D Touch is a novel way to tackle these two problems. In practice, 3D Touch means that 
      you can do the equivalent of a long press on various app icons to expose options hidden
      behind a long press menu. However, instead of a long press, you just push slightly harder 
      on the display to activate it so it happens as fast as you want it to be. The use of the
      Taptic Engine is actually quite helpful here as well, because it gives very obvious feedback 
      as to what you can do with a force touch. If the app on a homescreen doesn’t support any options 
      with 3D Touch, there’s a distinct double-tap to indicate this instead of a lot of pressing and
      wondering why nothing is happening. The speed at which you can do a force touch on the display
      means that 3D Touch gestures are just much faster and more user friendly than a traditional long-press.</p>
      
      <p>In the other case previously described, 3D Touch is actually impressive because of
      how well it effectively eliminates a lot of the user experience 
      inefficiencies that come with traditional multi-touch. Some of the
      key demos shown include peeking at emails with a medium-press, 
      and opening them with a hard-press. In the case of the medium-press, 
      you can look at an email with a single press quickly instead of 
      tapping on the email, quickly reading it, then marking it unread and swiping back 
      to the inbox. A hard-press opens the email completely so it isn’t necessary to 
      release the finger and then do a light tap. In practice, this is actually a fluent 
      gesture to make and I didn’t have any trouble with strange activation pressures. 
      As far as I can tell though the pressure levels aren’t relative, so it’s 
      fully possible to make a force touch equal to a light tap if you’re aggressive enough
      with the force touch gesture.</p>
      <p>The email example is just one application, but probably one of the more obvious
      applications of this would be viewing links in a message thread and responding to
      IM within that thread. Without the ability to peek at links, each link would have
      to be opened in the browser with the associated loading times and before using 
      multitasking to get back to the messaging application. In that time, it’s also possible
      that the messaging application would clear the message field so a half-written 
      message could be lost to the ether. With 3D Touch, it’s possible to easily view 
      links and other information in a message thread without losing focus.</p>
      <p>It’s also possible to do a fast multitasking gesture by applying pressure 
      while swiping from the left edge of the display, which allows a fast way of accessing 
      the next app in the multitasking menu instead of pressing the home button. Overall, 
      I think this is a pretty smart feature. It isn’t life-changing, but it’s definitely nice to have.</p>
      <p>The other features that I could immediately get my impressions on were retina
      flash and changes to video recording. 
      Retina flash sounds a bit over the top, but it’s really just a good way of 
      using the display as a front-facing LED flash. LG has done this before to be sure, but
      Apple has implemented it in a way that the display gets much brighter 
      than usual for a very short period of time. At least a few OEMs have implemented 
      front-facing cameras with LED flash, but I have to say in my experience an LED flash 
      with a front-facing camera is a painful experience because the light is strongly concentrated on 
      a single point. I thought LG had a smart idea in the form of using the display as a front-facing 
      LED flash as early as the G Flex 2, and given that Apple has adopted this idea as well it 
      seems that someone at Apple thought so as well.</p>
      <p>Although there was no way I’d be able to accurately say whether low light performance is
      comparable between the iPhone 6 and 6s, I did notice some changes to video recordings in the
      iPhone 6s. The first thing I noticed was that for slow motion video, 1080p120 is definitely 
      supported. Additionally when recording 4K video there’s no time limit like in most phones, which
      is notable because in most phones the time limit is to ensure that SoC or camera sensor temperatures
      don\'t exceed critical values. Live Photo seems like an interesting feature, but I really don\'t 
      know what to think there as the functionality could easily go either way depending upon the intelligence there.</p>
      <p>Outside of these small observations, it seems to me that the iPhone 6 Plus’ 
      camera now enables OIS when recording video. When I tried to record video, it’s
      obvious that some kind of hardware stabilization is happening because the video 
      was smoothed with the characteristic OIS jerkiness that I’ve seen in many phones 
      that only use OIS in video. In my experience, the iPhone 6 while recording video 
      appeared to not have any video stabilization at all while once recorded much of the
      jitter and shake was removed from the video. I didn’t get to examine the recorded 
      video too closely, but I suspect the electronic video stabilization will help to smooth 
      out the inherent jerkiness of OIS in video alone.</p>
      <p>Overall, I found the iPhone 6s lineup to be relatively promising in terms of new
      features like 3D Touch and performance with nothing that seemed wrong. However, as 
      the smartphone market continues to mature it’s no longer enough to just rely on a short hands-on 
      to identify potential pitfalls. In order to really understand the iPhone 6s lineup and the 
      problems that it might have a full review is necessary.</p>',
    user_id: user.id,
    photo: 'DSC_3755-2_678x452.jpg',
    photo_small: 'DSC_3755-2_carousel.jpg'},

    {title: 'Windows 10 Mobile One Step Closer to Release: Build 10536 Released To Insiders',
    text: '<p>When Microsoft launched Windows 10 on the PC, it was just one part
      of a bigger story, and today Microsoft released a new build of Windows 10 Mobile 
      for phones for people in the Windows Insider program to try out. Windows 10 Mobile 
      has seemed to be quite a bit behind the PC even through the last couple of months 
      of the push to Windows 10’s release on July 29th, but with the last couple of builds 
      we are starting to see some serious progress made towards what will eventually be 
      released as Windows 10 Mobile for the phone and small tablet market.</p> 

      <p>The builds are, much like when Windows 10 was getting ready to launch, 
      mostly bug fixes, but the polish and smoothness known of Windows Phone is now 
      slowly making its way to Windows 10 Mobile. It’s not quite there but it is 
      getting close.</p>

      <p>Today’s build brings some new features, fixes a couple of outstanding bugs, 
      and brings some more bugs, as anyone on the Fast Ring should expect.  
      Features at this point are going to really take a back seat though in order 
      for Microsoft to get the product shipped, but there are a couple of notable ones coming today.</p>
      <p>Windows 10 Mobile added a one-handed mode, which anyone that has seen or 
      used the iPhone 6 Plus would recognize. By holding the start button, the top 
      of the display moves down towards the bottom of the phone to make it easier to 
      use with just one hand. Initially this was just on larger phones, but based on 
      the feedback that Microsoft received through the Windows Insider program, the 
      feature is now available on all phones. It’s a small change to make, but I think it 
      shows how useful the Insider program has been to both users and Microsoft alike.</p>
      <p>The Photos app also got an update, and specifically for the phone performance should be 
      improved when zooming and panning. Since this is one of the many Universal Windows Apps that 
      are powering Windows 10, these improvements will be coming to the PC as well in an update that 
      should be out soon. Again, it’s a small change, but important at this stage of Windows 10 Mobile\'s evolution.</p>
      <p>Quite a few bugs were fixed in this build as well. Mobile hotspots work again, as does two-factor 
      authentication with a text message being the second factor. But being a Fast Ring build 
      there are also some new bugs as well such as an erroneous option in the Settings app 
      called zStorage which will cause Settings to crash.</p>
      <p>Microsoft has also pointed out that people using the Lumia 1020 will be missing features in the 
      built-in camera app not due to any deprecation in Windows 10 Mobile, but because the Lumia 
      Camera app is required to take full advantage of this 41 MP camera, and it won’t be in the store 
      until later this fall. The Windows 10 Mobile camera app will be gaining most of the features of 
      the Lumia Camera app which is a good thing, but for those with the 1020 they will need to use the 
      dedicated version of the software. I personally hope that a future Lumia phone features this same sensor and 
      optics paired with a much better ISP, even though it would be a low volume device. Time will 
      tell but considering the 1020 will still require the Lumia Camera app when all other Lumia phones 
      will be able to use the built-in camera app, it doesn’t look good.</p>
      <p>For those that want to check it out, sign up as a Windows Insider and give it a whirl. 
      I\'ve not recommended people run this on their everyday phone, since you generally need that 
      to work, but with each successive build it has gotten closer to the point where a lot 
      of people could run this on their phone they use every day.</p>',
    user_id: user.id,
    photo: 'Windows10MobilePreview_678x452.png',
    photo_small: 'Windows10MobilePreview_carousel.png'},

    {title: 'Samsung Announces 12Gb LPDDR4 DRAM For Mobile Devices',
    text: '<p>Today Samsung Electronics announced that they have begun mass production of 
      the memory industry\'s first 12Gb LPDDR4 DRAM on their 20nm manufacturing process. 
      These new chips offer 50% greater density than Samsung\'s existing 8Gb chips.</p> 

      <p>The production of 12Gb chips opens up the possibility of smartphones and 
      tablets with 6GB of RAM using a four 12Gb chip DRAM package, as well as 3GB using just 
      two chips in a package. A 6GB package would also only take up the same amount of space 
      as existing 3GB packages which use 6Gb chips. The new 12Gb chips also end up being very 
      slightly more than 30% faster than their 8Gb chips, with a per-pin speed of 4266Mbps which 
      would give 34Gbps of bandwidth over a 64bit bus. With Samsung beginning mass production of 
      this new memory it\'s only a matter of time before we start to see more devices move 
      from 2GB to 3GB and from 4GB to 6GB of RAM.</p>',
    user_id: user.id,
    photo: '12Gb LPDDR4_brightened4_678x452.jpg',
    photo_small: '12Gb LPDDR4_brightened4_carousel.jpg'},

    {title: 'Lenovo Launches Three New VIBE Smartphones',
    text: '<p>Lenovo has been making quite a number of announcements at IFA this year. We\'ve 
      seen a unique high end Android tablet, low end Android tablets, and really big phablets. 
      Their last announcement relating to mobile is the launch of 3 new smartphones under the Lenovo VIBE brand.</p> 

      <p>It\'s difficult to figure out where some of these smartphones fit in the grand scheme of things. 
      The Vibe P1 looks like Lenovo\'s phone for those interested in a large but not 6.8" 
      PHAB large smartphone, while the VIBE S1 is a mid/high device and the P1m is the more 
      low end device of the three. Both the P1 and P1m are characterized by very large 
      batteries, while  the Vibe S1 has a more typical 2500mAh battery.</p>
      <p>The internal hardware of the three VIBE smartphones varies greatly. The VIBE S1 and P1m use MediaTek SoCs, 
      while the P1 opts for Qualcomm\'s Snapdragon 615. The P1 also sports 802.11ac WiFi, 
      while the other two devices are limited to 802.11n. All of them have support for dual 
      SIMs, which is something of a necessity for phones aimed at markets in Asia.</p>
      <p>It\'s not likely that these smartphones will make their way to North American markets, but it\'s 
      always interesting to see what kind of devices get sold in different markets. Like all of Lenovo\'s 
      launches today, the VIBE S1, P1, and P1m will be going on sale this holiday season.</p>',
    user_id: user.id,
    photo: 'vibe_678x452.png',
    photo_small: 'vibe_carousel.png'}
    ])
end