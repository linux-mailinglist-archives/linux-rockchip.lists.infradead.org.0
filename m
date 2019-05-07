Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9B915E2E
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 09:27:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=jf9XlwmhfHw52NCRxgA2Bk4qacPt7Cry7fKgwmzREco=; b=rgM+IzxVpA9r1I
	IJd1RRxqime09rBL+pnu+JQ/xWBGspyTo9Z7qeQ03c8k08jwy09t9f9RKjT29UbR5PD3PEnqRPJpG
	79kbvFuT/wiqDPNXWyf9kJO8LOUGMnuKfMQKBLOGJhkKo2rMpmwGv9gmreQH0xBjYmt1ZOMNd0sJc
	gXvSTDese1XfIF8ofJ7siKGCRaAa8pRdHhQUFwVxyaOYqHeFbYSxP/WX9j4ZvdxWnLmtXjItVrWOX
	zOC8VNEslkOi3KKpYO6gHbxtzwcpDxmjioAgTvLLFtomEXlvbBZoAk1HEW7jEupB9O917UZEo7rpX
	8iqP9MihaZt30qPuyH5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNuVM-0005or-S7; Tue, 07 May 2019 07:27:12 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNuVJ-0005oH-DG
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 07:27:11 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 66812C0086;
 Tue,  7 May 2019 07:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557214031; bh=0z759RCJFMlZO7ucuET0Sajv1Xvygs1pUnrTfj2uEXI=;
 h=From:To:CC:Subject:Date:References:From;
 b=mSpBsPXKGKpdtVphGsQeGcygJRC91dtW/3yiisyGX/6lNYoH0ds5tEazuIMXx+geX
 fc9wTxQC6u8yrRydwng1seYq9VLAPOJ7sImqKi5L3wKtWMu6U/pnldbybWlfKQ4fbj
 JiD03lfJ5xIARkNWSxkNXc8MxhPfIUBwMaa7QBWOS67kn6SaSZJcR/3fIgzKoe6uk5
 1vm8+Mm/dopTjJQoZV+2ULvmmrkKZBVAx2qPs1ygY2ZyNLOxehCIvdooslKK+YyZmU
 HSHQ/bzD91LhD54RK+TShTPPqjGd/UvuUhAo/GZM+gyoZkzWhOvJlKQvvfs8Q/CYtY
 M0USXYzfA529Q==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 2E651A006B;
 Tue,  7 May 2019 07:27:02 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 7 May 2019 00:27:02 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 7 May 2019 00:27:01 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5EyqdiMu40WdTAdfOsw11FJ6b89u3ONbZBYkx4stZq8=;
 b=Vl/Cqw9GbD9J7E/kUL+uzKmIGyDfluisx6K6qfy/4bKHeZ8Om5leCpLP0SG2iMHLPz2Va0cRA25hyl9iWjbRsEuWZfuXT4zU831/tRlzNdpzxUIK4rqjBd38D62R32TMxYCY6DRXa2szC2ixhsLZKmtmzAkmAyDzVAVwg/CWAhY=
Received: from SN1PR12MB2431.namprd12.prod.outlook.com (52.132.195.146) by
 SN1PR12MB2590.namprd12.prod.outlook.com (52.132.199.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Tue, 7 May 2019 07:26:59 +0000
Received: from SN1PR12MB2431.namprd12.prod.outlook.com
 ([fe80::1982:4b45:2adf:9a1f]) by SN1PR12MB2431.namprd12.prod.outlook.com
 ([fe80::1982:4b45:2adf:9a1f%4]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 07:26:59 +0000
From: Artur Petrosyan <Arthur.Petrosyan@synopsys.com>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 1/5] usb: dwc2: bus suspend/resume for hosts with
 DWC2_POWER_DOWN_PARAM_NONE
Thread-Topic: [PATCH v2 1/5] usb: dwc2: bus suspend/resume for hosts with
 DWC2_POWER_DOWN_PARAM_NONE
Thread-Index: AQHU9XvT/eL2bASAskajIQu3Y3ICkw==
Date: Tue, 7 May 2019 07:26:59 +0000
Message-ID: <SN1PR12MB2431A37C761DA0BAAEF45F30A7310@SN1PR12MB2431.namprd12.prod.outlook.com>
References: <20190418001356.124334-1-dianders@chromium.org>
 <20190418001356.124334-2-dianders@chromium.org>
 <SN1PR12MB243108D1EF3239EC4F730ACDA7390@SN1PR12MB2431.namprd12.prod.outlook.com>
 <CAD=FV=UOmfNeuZPrDcZRdwAkF4yRifCpBGUuZTsmmz0UVEZ+yA@mail.gmail.com>
 <SN1PR12MB24317F315C5A4DFE70F9CB0DA73A0@SN1PR12MB2431.namprd12.prod.outlook.com>
 <CAD=FV=UWGOWiCpy5qUY8oFHPyxdYJe7OsdWBDuCNcXBu5BJoGA@mail.gmail.com>
 <SN1PR12MB243156982D5BD74F11680597A7350@SN1PR12MB2431.namprd12.prod.outlook.com>
 <CAD=FV=XzsKe5n_ThcrByW79UznpkmHf0YNRNKH8G3eFtUSsYZQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=arturp@synopsys.com; 
x-originating-ip: [23.62.99.241]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 693e1b90-6564-4fae-0a8c-08d6d2bd6478
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:SN1PR12MB2590; 
x-ms-traffictypediagnostic: SN1PR12MB2590:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <SN1PR12MB259071AB1309B260C1430A1DA7310@SN1PR12MB2590.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:469;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39850400004)(376002)(366004)(346002)(396003)(136003)(189003)(199004)(55674003)(316002)(25786009)(446003)(54906003)(73956011)(478600001)(99286004)(76176011)(53936002)(186003)(53546011)(6306002)(74316002)(486006)(26005)(476003)(6506007)(9686003)(55016002)(66946007)(66556008)(66066001)(76116006)(66446008)(66476007)(2906002)(64756008)(52536014)(86362001)(6116002)(3846002)(15650500001)(91956017)(14454004)(81156014)(71200400001)(71190400001)(7696005)(8676002)(966005)(8936002)(7736002)(305945005)(5660300002)(102836004)(68736007)(229853002)(6436002)(7416002)(4326008)(6246003)(6916009)(81166006)(33656002)(14444005)(256004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN1PR12MB2590;
 H:SN1PR12MB2431.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: k5Jcbfi3ZbTxddmApLu3MMfBr0TS2ygOiDmJh35hbSPqg63jRujseAuOZDiuWHuBy6e+kFZoN5mACXNCV8Fd+7Yp6S4mRQ15xRNMh/MM8Bw8WP/vSAsi401Dl8rmPpQvy2JDWwe5XUpaFNq6Y/KRs/kdLSeyfLb7/TcrNdQXVlzENgfa8cUcAbeeLdPbEhhdkQZnHvnvbVTi3xJ/wLhebzv0IMLWyyT7O3+ywUUhBmj8jhFQKkB+Y2/CcJ1OMo090S9TquPsVe01wRV97wC7xENt3cImCu0C8jqAgRuqm8qJ1QhtZjoW/uUFrP7HuDYco0Oq5J5oU40tWuJyPaHstMUrjCrdSdAOnAlfZUTBXFJZMVMNLH0geuwDVzUsdeBE8UI1j3E3HEVuNTA8/ZbCZAkeiTm9I7fuprK6VlcbxQ0=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 693e1b90-6564-4fae-0a8c-08d6d2bd6478
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 07:26:59.5033 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR12MB2590
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_002709_460796_ECD241AF 
X-CRM114-Status: GOOD (  24.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 5/3/2019 19:04, Doug Anderson wrote:
> Hi,
> 
> On Fri, May 3, 2019 at 1:20 AM Artur Petrosyan
> <Arthur.Petrosyan@synopsys.com> wrote:
>>
>> On 5/1/2019 05:57, Doug Anderson wrote:
>>> Hi,
>>>
>>> On Mon, Apr 29, 2019 at 11:06 PM Artur Petrosyan
>>> <Arthur.Petrosyan@synopsys.com> wrote:
>>>>
>>>> Hi,
>>>>
>>>> On 4/29/2019 21:34, Doug Anderson wrote:
>>>>> Hi,
>>>>>
>>>>> On Mon, Apr 29, 2019 at 1:43 AM Artur Petrosyan
>>>>> <Arthur.Petrosyan@synopsys.com> wrote:
>>>>>>
>>>>>> Hi,
>>>>>>
>>>>>> On 4/18/2019 04:15, Douglas Anderson wrote:
>>>>>>> This is an attempt to rehash commit 0cf884e819e0 ("usb: dwc2: add bus
>>>>>>> suspend/resume for dwc2") on ToT.  That commit was reverted in commit
>>>>>>> b0bb9bb6ce01 ("Revert "usb: dwc2: add bus suspend/resume for dwc2"")
>>>>>>> because apparently it broke the Altera SOCFPGA.
>>>>>>>
>>>>>>> With all the changes that have happened to dwc2 in the meantime, it's
>>>>>>> possible that the Altera SOCFPGA will just magically work with this
>>>>>>> change now.  ...and it would be good to get bus suspend/resume
>>>>>>> implemented.
>>>>>>>
>>>>>>> This change is a forward port of one that's been living in the Chrome
>>>>>>> OS 3.14 kernel tree.
>>>>>>>
>>>>>>> Signed-off-by: Douglas Anderson <dianders@chromium.org>
>>>>>>> ---
>>>>>>> This patch was last posted at:
>>>>>>>
>>>>>>> https://urldefense.proofpoint.com/v2/url?u=https-3A__lkml.kernel.org_r_1446237173-2D15263-2D1-2Dgit-2Dsend-2Demail-2Ddianders-40chromium.org&d=DwIDAg&c=DPL6_X_6JkXFx7AXWqB0tg&r=9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7niMJI&m=MMfe-4lZePyty6F5zfQ54kiYGuJWNulyRat944LkOsc&s=nExFpAPP_0plZfO5LMG1B-mqt1vyCvE35elVcyVgs8Y&e=
>>>>>>>
>>>>>>> ...and appears to have died the death of silence.  Maybe it could get
>>>>>>> some bake time in linuxnext if we can't find any proactive testing?
>>>>>>>
>>>>>>> I will also freely admit that I don't know tons about the theory
>>>>>>> behind this patch.  I'm mostly just re-hashing the original commit
>>>>>>> from Kever that was reverted since:
>>>>>>> * Turning on partial power down on rk3288 doesn't "just work".  I
>>>>>>>       don't get hotplug events.  This is despite dwc2 auto-detecting that
>>>>>>>       we are power optimized.
>>>>>> What do you mean by doesn't "just work" ? It seem to me that even after
>>>>>> adding this patch you don't get issues fixed.
>>>>>> You mention that you don't get the hotplug events. Please provide dwc2
>>>>>> debug logs and register dumps on this issue.
>>>>>
>>>>> I mean that partial power down in the currently upstream driver
>>>>> doesn't work.  AKA: if I turn on partial power down in the upstream
>>>>> driver then hotplug events break.  I can try to provide some logs.  On
>>>>> what exact version of the code do you want logs?  Just your series?
>>>>> Just my series?  Mainline?  Some attempt at combining both series?  As
>>>>> I said things seem to sorta work with the combined series.  I can try
>>>>> to clarify if that's the series you want me to test with.  ...or I can
>>>>> wait for your next version?
>>>> As I said this patch doesn't fix the issue with hotplug. With this patch
>>>> or without the hotplug behaves as it was. I have tested it on our setup.
>>>>
>>>> Have you debugged your patch? Does it make any difference on your setup
>>>> ? Does it fix the issue with hotplug?
>>>
>>> I think we're still not taking on the same page.
>>>
>>> My patch makes no attempt to make partial power down mode work.  My
>>> patch attempts to make things work a little better when using
>>> DWC2_POWER_DOWN_PARAM_NONE.  There is no use testing my patch with
>>> partial power down as it shouldn't have any impact there.
>>>
>>>
>>>>> I am by no means an expert on dwc2, but an assumption made in my patch
>>>>> is that even cores that can't support partial power down can still
>>>>> save some amount of power when hcd_suspend is called.
>>>> Have you tried to debug dwc2 with power_down == DWC2_POWER_DOWN_PARAM_NONE ?
>>>>>
>>>>> Some evidence that this should be possible: looking at mainline Linux
>>>>> and at dwc2_port_suspend(), I see:
>>>>>
>>>>> * It is currently called even when we have DWC2_POWER_DOWN_PARAM_NONE
>>>> Currently (without your and my patches) (looking at mainline Linux) the
>>>> function dwc2_port_suspend() is called anyway because its call is issued
>>>> by the system. But it performs entering to suspend only in case of
>>>> DWC2_POWER_DOWN_PARAM_PARTIAL.
>>>>
>>>> This is not an assumption. What I am pointing out is based on debugging
>>>> and before making assumptions without debugging for me seems not ok.
>>>>
>>>> Currently without your patch and without my patches. In the
>>>> dwc2_port_suspend() it will enter to suspend only in case that
>>>> power_down == DWC2_POWER_DOWN_PARAM_PARTIAL. Because if you look at the
>>>> code more carefully you will see
>>>>
>>>>           if (hsotg->params.power_down != DWC2_POWER_DOWN_PARAM_PARTIAL)
>>>>                   goto skip_power_saving;
>>>>
>>>> This says if power_down is not DWC2_POWER_DOWN_PARAM_PARTIAL then skip
>>>> power saving.
>>>>
>>>> So but after your patch. If power_down is DWC2_POWER_DOWN_PARAM_NONE it
>>>> tries to suspend.
>>>
>>> We must be looking at different code.  I'm looking at Linux's tree, AKA:
>>>
>>> https://urldefense.proofpoint.com/v2/url?u=https-3A__git.kernel.org_pub_scm_linux_kernel_git_torvalds_linux.git_tree_drivers_usb_dwc2_hcd.c-23n3488&d=DwIFaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7niMJI&m=IWkDOOGTr0q-H1piDv2KOZe_Hnrz18g6rXFx-DsTuv4&s=AHu2iOKkybliRGtIfN7cF5p070UdvUKTYJsyAKYojis&e=
>> Here you are looking at the old code. After that there are several of
>> changes related to suspend/resume functions.
> 
> In my email, see that I said I actually checked out mainline kernel
> (and I gave you the exact version: "v5.1-rc7-5-g83a50840e72a") and
> added printouts in dwc2_port_suspend() next to where it set HPRT0_SUSP
> and PCGCTL_STOPPCLK in dwc2_port_suspend().
I was talking about your patch which edits _dwc2_hcd_suspend() function.
What dwc2_port_suspend() implements for the hibernation or partial power 
down I have not tested. It is a different implementation.
> 
> [  454.906364] dwc2 ff540000.usb: I'm setting HPRT0_SUSP
> [  454.906367] dwc2 ff540000.usb: I'm setting PCGCTL_STOPPCLK
> 
> The version "v5.1-rc7-5-g83a50840e72a" is not old code.
> 
> 
>> This is the link to the code with changes. Latest version of those
>> functions.
>>
>> https://urldefense.proofpoint.com/v2/url?u=https-3A__git.kernel.org_pub_scm_linux_kernel_git_torvalds_linux.git_tree_drivers_usb_dwc2_hcd.c-23n4489&d=DwIFaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7niMJI&m=4lskGlSdN5lp0MXVy1SP0zxzFtbPMSUoQKQzLLmfoOg&s=A-ikUNQklzouItTOQB078WrOiMcfCqgw8sBgLFwtyTU&e=
>>
>> Your changes are sitting on that latest version of code. Not the old
>> version of it.
> 
> You are pointing me at _dwc2_hcd_suspend() whereas I pointed at
> dwc2_port_suspend().  Why?
Because your patch is editing _dwc2_hcd_suspend().
> 
> I am saying that dwc2_port_suspend() _does_ set "HPRT0_SUSP" and
> "PCGCTL_STOPPCLK" even with DWC2_POWER_DOWN_PARAM_NONE.  Do you
> disagree?
Yes dwc2_port_suspend() does but that is a different implementation
> 
> I completely agree that on mainline _dwc2_hcd_suspend() _does not_ set
> these bits with DWC2_POWER_DOWN_PARAM_NONE.  That is what my patch
> fixes.
Yes so I was pointing to that.
> 
> 
> -Doug
> 

I have performed testes and made sure that the patch is ok. It is just 
that I am not sure if it does really save power. I have not been able to 
see if any power is saved.

So I am ok with this patch.

-- 
Regards,
Artur

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
