Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7FC129CD
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 May 2019 10:20:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=90vZWl8lQaAUtIkoXMCgZJxCPgIRP6jYajpfy8Rpzik=; b=u1qoOFcGlIJDDq
	4tUpbnyZreiGviOmESSD8b0ID/ga1V9FF5HA+lkBaiIZLvr6OytW6eWIxoT0omprNaTzM98RlV1Ol
	/pJBwKJlwYYHCv7sCQkYd/zUcsxFy8ll97OSsdtZuZ/cA2j9p3JyNxNSTIBtQ7hWCTj5bmEPBv2jr
	h/fYm/JywDoECPHH7wSJ8BH9yBoq61W63FNUk/4gtaEYh6i1U7FyJVdI5xtprs510IahohEQ2O6+c
	4Wj2jAICCAmEpqEUjs30FWYLOsn6zuTElCwSKho/P8Bl80YOnX9K0m2G2pc90xhCdHkAvdiV7PVwH
	v1z5g2uCuyBSSXCyijVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMTQc-0002M8-FY; Fri, 03 May 2019 08:20:22 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMTQY-0002LO-9o
 for linux-rockchip@lists.infradead.org; Fri, 03 May 2019 08:20:20 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 4ACE4C0159;
 Fri,  3 May 2019 08:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1556871612; bh=ev67Stj8Ed6IH7ye+6gIzDKkiT6vgQ7ftgweF+BDnNc=;
 h=From:To:CC:Subject:Date:References:From;
 b=dCEEATTn3JgBqd9Sf4DNufaAaejA5dqOb3lRFq2AtplazchpExGQy/pOdKNxj41n0
 72WIjyIwpatbOM8A0LVfv9YRQ1rLtgQC8crwBiV/fdSS3V2uAcZQVgsY/T36+6oq5y
 BOI5N/aY4ctAcjcVVUKd9UVu3YaK3VNG2ulO+6M4yLJMkelLknUAQE5gacGjJs5p2R
 fOhDHgON/4hi5wk2l6HfkMrBs6AHqV/8JuK5xLO7TrRX13g98+gsMCGv0GMiwxxaoG
 a9A2DPy6CGYat2jyPUP1StPu8sukW4VKzGlbd4GIBhOEc4wDgC1osX1BvW6p9QCbTa
 /QLDLSvIE7vBQ==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 28813A005D;
 Fri,  3 May 2019 08:20:11 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC2.internal.synopsys.com (10.12.239.237) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 3 May 2019 01:20:11 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 3 May 2019 01:20:10 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SzOqCEoi/RMSfvrSTXJ0eRwO8LREf+nR0SENYAUxBVw=;
 b=STTkZKmC2EaUwtk2LnupenYQ1y8juDrEzji1glMkzFiqMwSUh4ppPQJ19cTznbbYclRAnLto75MWeCr02O5ZeEO10vxQk18zGhTZifzC+NWHioe+h6EPdhcqATuXcxBuilvRTawaWN/Nrh5A22XvZDzU0inlURc27NXXnWxrHcY=
Received: from SN1PR12MB2431.namprd12.prod.outlook.com (52.132.195.146) by
 SN1PR12MB2509.namprd12.prod.outlook.com (52.132.196.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Fri, 3 May 2019 08:20:09 +0000
Received: from SN1PR12MB2431.namprd12.prod.outlook.com
 ([fe80::1982:4b45:2adf:9a1f]) by SN1PR12MB2431.namprd12.prod.outlook.com
 ([fe80::1982:4b45:2adf:9a1f%4]) with mapi id 15.20.1856.012; Fri, 3 May 2019
 08:20:09 +0000
From: Artur Petrosyan <Arthur.Petrosyan@synopsys.com>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 1/5] usb: dwc2: bus suspend/resume for hosts with
 DWC2_POWER_DOWN_PARAM_NONE
Thread-Topic: [PATCH v2 1/5] usb: dwc2: bus suspend/resume for hosts with
 DWC2_POWER_DOWN_PARAM_NONE
Thread-Index: AQHU9XvT/eL2bASAskajIQu3Y3ICkw==
Date: Fri, 3 May 2019 08:20:09 +0000
Message-ID: <SN1PR12MB243156982D5BD74F11680597A7350@SN1PR12MB2431.namprd12.prod.outlook.com>
References: <20190418001356.124334-1-dianders@chromium.org>
 <20190418001356.124334-2-dianders@chromium.org>
 <SN1PR12MB243108D1EF3239EC4F730ACDA7390@SN1PR12MB2431.namprd12.prod.outlook.com>
 <CAD=FV=UOmfNeuZPrDcZRdwAkF4yRifCpBGUuZTsmmz0UVEZ+yA@mail.gmail.com>
 <SN1PR12MB24317F315C5A4DFE70F9CB0DA73A0@SN1PR12MB2431.namprd12.prod.outlook.com>
 <CAD=FV=UWGOWiCpy5qUY8oFHPyxdYJe7OsdWBDuCNcXBu5BJoGA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=arturp@synopsys.com; 
x-originating-ip: [84.53.141.186]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7cb46ea9-9584-441e-b4cb-08d6cfa02804
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:SN1PR12MB2509; 
x-ms-traffictypediagnostic: SN1PR12MB2509:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <SN1PR12MB25097AEF3FF18589CEF1D033A7350@SN1PR12MB2509.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:849;
x-forefront-prvs: 0026334A56
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(396003)(136003)(39850400004)(366004)(376002)(55674003)(199004)(189003)(102836004)(26005)(55016002)(9686003)(53546011)(6436002)(229853002)(6306002)(68736007)(966005)(476003)(6506007)(81156014)(81166006)(4326008)(446003)(8676002)(74316002)(7416002)(7736002)(305945005)(6916009)(486006)(25786009)(86362001)(99286004)(186003)(53936002)(8936002)(73956011)(66066001)(6116002)(3846002)(6246003)(478600001)(5660300002)(66556008)(256004)(14444005)(316002)(33656002)(66476007)(66446008)(14454004)(66946007)(76116006)(91956017)(71190400001)(2906002)(15650500001)(71200400001)(52536014)(54906003)(7696005)(64756008)(76176011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN1PR12MB2509;
 H:SN1PR12MB2431.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pRi0aiEbfO5wqX2cwvLLp/ax4KrsZ2HypcXfe8VVnzHrBJrjRiFmCu5lJjz1RqFinGurabwHfrkZP1cj7LUjcIGNI3eT3waYMu5Awp8oFw87j4b5B05xyyuKTPjvn/lf+FaVQmPr2EhUILzP8BGK8NY8B7oGFkse/viA0ZVtt8V1TeMXVbTJ3MQXq+jJarIv5KYuDrFL7fMMEnYhhcNqFo5Pw1rUU+Rofk4f0CuxJSd/Jtw+29yMf85BabaFRKrTKq9pimXqD/t6rDovZn7P+qfZsIsag0mbAnlcgkMtimjZUg6H1cDacxZ55998OgMUwzxOsVJL0vBghYziUKXpnu9oHwIcEqL3F82ti9gBToPbVgLMIs/KbVjSk9wpFjgiCDahQZTzZPOyC4/14h/py0G4mnWo+DJve7GREqynuqc=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cb46ea9-9584-441e-b4cb-08d6cfa02804
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2019 08:20:09.0886 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR12MB2509
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_012018_364676_50730FB7 
X-CRM114-Status: GOOD (  27.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Amelie Delaunay <amelie.delaunay@st.com>, Randy Li <ayaka@soulik.info>,
 "amstan@chromium.org" <amstan@chromium.org>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "zyw@rock-chips.com" <zyw@rock-chips.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "mka@chromium.org" <mka@chromium.org>, Alan  Stern <stern@rowland.harvard.edu>,
 Elaine  Zhang <zhangqing@rock-chips.com>,
 "jwerner@chromium.org" <jwerner@chromium.org>,
 William Wu <william.wu@rock-chips.com>,
 "ryandcase@chromium.org" <ryandcase@chromium.org>,
 "dinguyen@opensource.altera.com" <dinguyen@opensource.altera.com>,
 "heiko@sntech.de" <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 5/1/2019 05:57, Doug Anderson wrote:
> Hi,
> 
> On Mon, Apr 29, 2019 at 11:06 PM Artur Petrosyan
> <Arthur.Petrosyan@synopsys.com> wrote:
>>
>> Hi,
>>
>> On 4/29/2019 21:34, Doug Anderson wrote:
>>> Hi,
>>>
>>> On Mon, Apr 29, 2019 at 1:43 AM Artur Petrosyan
>>> <Arthur.Petrosyan@synopsys.com> wrote:
>>>>
>>>> Hi,
>>>>
>>>> On 4/18/2019 04:15, Douglas Anderson wrote:
>>>>> This is an attempt to rehash commit 0cf884e819e0 ("usb: dwc2: add bus
>>>>> suspend/resume for dwc2") on ToT.  That commit was reverted in commit
>>>>> b0bb9bb6ce01 ("Revert "usb: dwc2: add bus suspend/resume for dwc2"")
>>>>> because apparently it broke the Altera SOCFPGA.
>>>>>
>>>>> With all the changes that have happened to dwc2 in the meantime, it's
>>>>> possible that the Altera SOCFPGA will just magically work with this
>>>>> change now.  ...and it would be good to get bus suspend/resume
>>>>> implemented.
>>>>>
>>>>> This change is a forward port of one that's been living in the Chrome
>>>>> OS 3.14 kernel tree.
>>>>>
>>>>> Signed-off-by: Douglas Anderson <dianders@chromium.org>
>>>>> ---
>>>>> This patch was last posted at:
>>>>>
>>>>> https://urldefense.proofpoint.com/v2/url?u=https-3A__lkml.kernel.org_r_1446237173-2D15263-2D1-2Dgit-2Dsend-2Demail-2Ddianders-40chromium.org&d=DwIDAg&c=DPL6_X_6JkXFx7AXWqB0tg&r=9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7niMJI&m=MMfe-4lZePyty6F5zfQ54kiYGuJWNulyRat944LkOsc&s=nExFpAPP_0plZfO5LMG1B-mqt1vyCvE35elVcyVgs8Y&e=
>>>>>
>>>>> ...and appears to have died the death of silence.  Maybe it could get
>>>>> some bake time in linuxnext if we can't find any proactive testing?
>>>>>
>>>>> I will also freely admit that I don't know tons about the theory
>>>>> behind this patch.  I'm mostly just re-hashing the original commit
>>>>> from Kever that was reverted since:
>>>>> * Turning on partial power down on rk3288 doesn't "just work".  I
>>>>>      don't get hotplug events.  This is despite dwc2 auto-detecting that
>>>>>      we are power optimized.
>>>> What do you mean by doesn't "just work" ? It seem to me that even after
>>>> adding this patch you don't get issues fixed.
>>>> You mention that you don't get the hotplug events. Please provide dwc2
>>>> debug logs and register dumps on this issue.
>>>
>>> I mean that partial power down in the currently upstream driver
>>> doesn't work.  AKA: if I turn on partial power down in the upstream
>>> driver then hotplug events break.  I can try to provide some logs.  On
>>> what exact version of the code do you want logs?  Just your series?
>>> Just my series?  Mainline?  Some attempt at combining both series?  As
>>> I said things seem to sorta work with the combined series.  I can try
>>> to clarify if that's the series you want me to test with.  ...or I can
>>> wait for your next version?
>> As I said this patch doesn't fix the issue with hotplug. With this patch
>> or without the hotplug behaves as it was. I have tested it on our setup.
>>
>> Have you debugged your patch? Does it make any difference on your setup
>> ? Does it fix the issue with hotplug?
> 
> I think we're still not taking on the same page.
> 
> My patch makes no attempt to make partial power down mode work.  My
> patch attempts to make things work a little better when using
> DWC2_POWER_DOWN_PARAM_NONE.  There is no use testing my patch with
> partial power down as it shouldn't have any impact there.
> 
> 
>>> I am by no means an expert on dwc2, but an assumption made in my patch
>>> is that even cores that can't support partial power down can still
>>> save some amount of power when hcd_suspend is called.
>> Have you tried to debug dwc2 with power_down == DWC2_POWER_DOWN_PARAM_NONE ?
>>>
>>> Some evidence that this should be possible: looking at mainline Linux
>>> and at dwc2_port_suspend(), I see:
>>>
>>> * It is currently called even when we have DWC2_POWER_DOWN_PARAM_NONE
>> Currently (without your and my patches) (looking at mainline Linux) the
>> function dwc2_port_suspend() is called anyway because its call is issued
>> by the system. But it performs entering to suspend only in case of
>> DWC2_POWER_DOWN_PARAM_PARTIAL.
>>
>> This is not an assumption. What I am pointing out is based on debugging
>> and before making assumptions without debugging for me seems not ok.
>>
>> Currently without your patch and without my patches. In the
>> dwc2_port_suspend() it will enter to suspend only in case that
>> power_down == DWC2_POWER_DOWN_PARAM_PARTIAL. Because if you look at the
>> code more carefully you will see
>>
>>          if (hsotg->params.power_down != DWC2_POWER_DOWN_PARAM_PARTIAL)
>>                  goto skip_power_saving;
>>
>> This says if power_down is not DWC2_POWER_DOWN_PARAM_PARTIAL then skip
>> power saving.
>>
>> So but after your patch. If power_down is DWC2_POWER_DOWN_PARAM_NONE it
>> tries to suspend.
> 
> We must be looking at different code.  I'm looking at Linux's tree, AKA:
> 
> https://urldefense.proofpoint.com/v2/url?u=https-3A__git.kernel.org_pub_scm_linux_kernel_git_torvalds_linux.git_tree_drivers_usb_dwc2_hcd.c-23n3488&d=DwIFaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7niMJI&m=IWkDOOGTr0q-H1piDv2KOZe_Hnrz18g6rXFx-DsTuv4&s=AHu2iOKkybliRGtIfN7cF5p070UdvUKTYJsyAKYojis&e=
Here you are looking at the old code. After that there are several of 
changes related to suspend/resume functions.

This is the link to the code with changes. Latest version of those 
functions.

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/usb/dwc2/hcd.c#n4489

Your changes are sitting on that latest version of code. Not the old 
version of it.

> 
> I took a mainline kernel ("v5.1-rc7-5-g83a50840e72a") and added
> printouts in dwc2_port_suspend() next to where it set HPRT0_SUSP and
> PCGCTL_STOPPCLK in dwc2_port_suspend().
I think you did this tests on the old version of the code

I have tested the flow myself with the mainline Kernel on 
"torvalds/master" and not HPRT0_SUSP nor PCGCTL_STOPPCLK are not being set.

So here you need to review those things again.

> 
> [  454.906364] dwc2 ff540000.usb: I'm setting HPRT0_SUSP
> [  454.906367] dwc2 ff540000.usb: I'm setting PCGCTL_STOPPCLK
> 
> ...and just to confirm:
> 
> # grep '^power' /sys/kernel/debug/*.usb/params
> /sys/kernel/debug/ff540000.usb/params:power_down                    : 0
> /sys/kernel/debug/ff580000.usb/params:power_down                    : 0
> 
> So I'm really quite convinced that on mainline Linux with
> DWC2_POWER_DOWN_PARAM_NONE that dwc2_port_suspend() sets HPRT0_SUSP
> and PCGCTL_STOPPCLK.
> 
> 
>>> ...I believe that the net effect of my patch ends up doing both those
>>> same two things in hcd_suspend.  That is: when power_down is
>>> DWC2_POWER_DOWN_PARAM_NONE I believe my patch is really just doing the
>>> same thing that dwc2_port_suspend() would do in the same case.  Is
>>> that not OK?
>> No if your patch is doing the same thing as it was doing before what is
>> the purpose of the patch ?
> 
> The purpose is to make _dwc2_hcd_suspend() work more correctly in the
> case where power_down is DWC2_POWER_DOWN_PARAM_NONE >
> 
>> My testes show that your patch doesn't fix the issue related partial
>> power down.
> 
> Right.  I have been trying to say that my patch doesn't do anything at
> all for partial power down.  I am simply trying to make
> DWC2_POWER_DOWN_PARAM_NONE work more correctly.
> 
> I haven't run all the power consumption tests in quite a long time and
> I'll try to get it hooked up tomorrow to confirm that my patch really
> truly is still needed to help with power consumption.  I did confirm
> that at least there are cases where _dwc2_hcd_suspend() is called and
> my patch is what sets the important bits.
> 
> -Doug
> 


-- 
Regards,
Artur

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
