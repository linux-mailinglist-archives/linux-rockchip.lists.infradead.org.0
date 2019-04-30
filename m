Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B87F071
	for <lists+linux-rockchip@lfdr.de>; Tue, 30 Apr 2019 08:23:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=gHY6bFiKBIIExyTEEjBQCw3wicZxGU68tS6YaUhKB2Q=; b=dfYytUyd1g3jx1
	TFq+MHEr3ObuvQ10w1WDy/jEh5iMJ868B8Q9QnIt4xJ1axdt3uFW+BbwQk1cqpXVZlkmoxyaeJQ/n
	h1vXq6WDcU2L4teOrpzztpbH74n/Qw/rcTTHEwTwuHdsL/8OYGj35I0W/ciLgPc97ULuyBZGdHaTt
	Z7NoYU8QKKeVD9UJ+VFAY0YppUv8kUrtmfoOamWaAYls8nHC7KvGMugm/p1Zobx2MLWzWj/kEKkO4
	bXJP5fVRMmi2VSbfrCZ4d5G9M8VJF7Iby5lPDH2E74aUUK4aMQOUCfYcmG3Oh0TWgV8dcTkkgLM90
	szx9iwb12LDoekamKT4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLMAo-0006QS-NI; Tue, 30 Apr 2019 06:23:26 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLMAm-0006IF-NT
 for linux-rockchip@bombadil.infradead.org; Tue, 30 Apr 2019 06:23:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0U4FQ17djSGy5iqZxiL6Sgpa131uidFWQrZIhQwFKUg=; b=caH+Yb5YzNBS1c0t9xqVrYAa6N
 0tLvxjqURms5Tcz3nmCp+4qsCEJVr48dy1omy2YEoPOBGY3dLTErYjgV3CqsUu2KE//3HZZC7I1rf
 kSzr7VMUvzCtIYu8zQ9GASkXAaQGJrhRCzswrDA0+62i/5xe6hYCYRNh+qVXkn8eg/nYLouo3HRZq
 Xr9Lq/EmKhW06rHsoDyg0/p6z+w9AC5zPDpDT8LYBS8D5JdfmLSC5HbHEMAhXeqja6oyUgybTvE6X
 Ay5RrdYU5CGOLNKbuGJ6L8w0C1NHUtbSYZalo1w+RRfHj1rm3xMdrWw+qdRPtOyeQPy6pl5QQH+du
 vhnpa5+g==;
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLLuX-0006ZJ-42
 for linux-rockchip@lists.infradead.org; Tue, 30 Apr 2019 06:06:39 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id B653BC004D;
 Tue, 30 Apr 2019 06:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1556604391; bh=v57Lc5qEJQEbqpWZJHgfBy/s9g8JdJin+UyR2xA0EN0=;
 h=From:To:CC:Subject:Date:References:From;
 b=LCjBUga8v8p65eOzBIjWCKN4mcfw33iN4gYQIE1wwWB4YcxCpNOlqJeKXqAB4BRx5
 JONvO5DlREB//bkGmvwJhFNiNR/05bfCIzQgQigs0iBFHoT9Y/qSR5lqpKnnF6OuNL
 SjAArA7OxvQx+xw8lLDCAJKzyG6+MQZCc1HNZNX7s53/ePBGviubSairZ1IX2EE/6M
 2hdVnqcWi13cBhPgRbixC+DHF5KVGhsdllfn8DFzj8eb175+SL40C3gb7j82ikPWOs
 10RHB/19mJCSkvJbsPPZRthARBKIx5raRqJmIyTzU9VHHIzPve6w5HPsp5XaAZ+r4m
 U70Omwp6IeqHg==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 95402A0067;
 Tue, 30 Apr 2019 06:06:25 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 us01wehtc1.internal.synopsys.com (10.12.239.231) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 29 Apr 2019 23:05:27 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 29 Apr 2019 23:05:26 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0U4FQ17djSGy5iqZxiL6Sgpa131uidFWQrZIhQwFKUg=;
 b=P8AWQTB/Tnirc9JTvlE3v3rNt3oyt/Rjem62WcyX+pcJZskYefTmzsx+J50Se4IuxL/Pd4RkAnV7D5rgmAqXBy26tPMqi8gDyEFPw5qNz0rnxYCqJUSTboOsDkjD7ejQQ0vUuKfmEBAsytoH40IvbLeC/Ubgoo4bLo7w9AeS/nw=
Received: from SN1PR12MB2431.namprd12.prod.outlook.com (52.132.195.146) by
 SN1PR12MB0717.namprd12.prod.outlook.com (10.163.209.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Tue, 30 Apr 2019 06:05:21 +0000
Received: from SN1PR12MB2431.namprd12.prod.outlook.com
 ([fe80::1982:4b45:2adf:9a1f]) by SN1PR12MB2431.namprd12.prod.outlook.com
 ([fe80::1982:4b45:2adf:9a1f%4]) with mapi id 15.20.1835.010; Tue, 30 Apr 2019
 06:05:21 +0000
From: Artur Petrosyan <Arthur.Petrosyan@synopsys.com>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 1/5] usb: dwc2: bus suspend/resume for hosts with
 DWC2_POWER_DOWN_PARAM_NONE
Thread-Topic: [PATCH v2 1/5] usb: dwc2: bus suspend/resume for hosts with
 DWC2_POWER_DOWN_PARAM_NONE
Thread-Index: AQHU9XvT/eL2bASAskajIQu3Y3ICkw==
Date: Tue, 30 Apr 2019 06:05:21 +0000
Message-ID: <SN1PR12MB24317F315C5A4DFE70F9CB0DA73A0@SN1PR12MB2431.namprd12.prod.outlook.com>
References: <20190418001356.124334-1-dianders@chromium.org>
 <20190418001356.124334-2-dianders@chromium.org>
 <SN1PR12MB243108D1EF3239EC4F730ACDA7390@SN1PR12MB2431.namprd12.prod.outlook.com>
 <CAD=FV=UOmfNeuZPrDcZRdwAkF4yRifCpBGUuZTsmmz0UVEZ+yA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=arturp@synopsys.com; 
x-originating-ip: [84.53.141.183]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7d285ef8-4bc7-4bde-de41-08d6cd31d457
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:SN1PR12MB0717; 
x-ms-traffictypediagnostic: SN1PR12MB0717:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <SN1PR12MB071732B43D42CB23DFEF7069A73A0@SN1PR12MB0717.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(396003)(366004)(136003)(376002)(39850400004)(189003)(199004)(55674003)(5660300002)(52536014)(478600001)(8936002)(66066001)(68736007)(102836004)(14444005)(8676002)(81166006)(81156014)(256004)(76176011)(229853002)(7696005)(6916009)(316002)(54906003)(99286004)(53546011)(6506007)(71200400001)(71190400001)(55016002)(6436002)(15650500001)(4326008)(6306002)(9686003)(6246003)(25786009)(53936002)(97736004)(26005)(93886005)(476003)(14454004)(446003)(186003)(486006)(33656002)(74316002)(64756008)(66556008)(66946007)(66476007)(91956017)(66446008)(305945005)(966005)(7416002)(76116006)(6116002)(73956011)(86362001)(7736002)(3846002)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN1PR12MB0717;
 H:SN1PR12MB2431.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Y0slcSJZsQUBb35x3QxOCUjT2bTnz00Fwkud7cq9I1u59UiBHedG1NGg2CxDP5V10Pqh1J+ML2+oe1JTdoFrVS0LQsU4BImb659h1Kn/z0+I7Bg2YEyLdoxxFkDFG1NXxJI5US+BHfZdx6gykFU0IViO9x1Y3oAH3Ly7I5dukHGtlRVbaYJa9QjlB2j6MOkjoPQbmk71GK9j7wiVaaZVrEh/wI8khYg3v4Oqnj43r4wEbgsQRd9kJUZ0XTIDkcTNTnBKpUo7j8K6r5aR4lxOZGbWZiQEbDHEtJbIs1pGROR4cX0cYocUaRk8pHmUDfCNu0jF62TXQkDb+iH0AZ8DsZmYozh8OJvx0Xn3q+imw86OEOVbIM6v6nsgyo97k5wu+4hwfkTd26Gqq822ljz7xbqjKouLmBz3j2C1ylvrRQI=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d285ef8-4bc7-4bde-de41-08d6cd31d457
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 06:05:21.8203 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR12MB0717
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_070637_503845_0D3668A5 
X-CRM114-Status: GOOD (  43.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi,

On 4/29/2019 21:34, Doug Anderson wrote:
> Hi,
> 
> On Mon, Apr 29, 2019 at 1:43 AM Artur Petrosyan
> <Arthur.Petrosyan@synopsys.com> wrote:
>>
>> Hi,
>>
>> On 4/18/2019 04:15, Douglas Anderson wrote:
>>> This is an attempt to rehash commit 0cf884e819e0 ("usb: dwc2: add bus
>>> suspend/resume for dwc2") on ToT.  That commit was reverted in commit
>>> b0bb9bb6ce01 ("Revert "usb: dwc2: add bus suspend/resume for dwc2"")
>>> because apparently it broke the Altera SOCFPGA.
>>>
>>> With all the changes that have happened to dwc2 in the meantime, it's
>>> possible that the Altera SOCFPGA will just magically work with this
>>> change now.  ...and it would be good to get bus suspend/resume
>>> implemented.
>>>
>>> This change is a forward port of one that's been living in the Chrome
>>> OS 3.14 kernel tree.
>>>
>>> Signed-off-by: Douglas Anderson <dianders@chromium.org>
>>> ---
>>> This patch was last posted at:
>>>
>>> https://urldefense.proofpoint.com/v2/url?u=https-3A__lkml.kernel.org_r_1446237173-2D15263-2D1-2Dgit-2Dsend-2Demail-2Ddianders-40chromium.org&d=DwIDAg&c=DPL6_X_6JkXFx7AXWqB0tg&r=9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7niMJI&m=MMfe-4lZePyty6F5zfQ54kiYGuJWNulyRat944LkOsc&s=nExFpAPP_0plZfO5LMG1B-mqt1vyCvE35elVcyVgs8Y&e=
>>>
>>> ...and appears to have died the death of silence.  Maybe it could get
>>> some bake time in linuxnext if we can't find any proactive testing?
>>>
>>> I will also freely admit that I don't know tons about the theory
>>> behind this patch.  I'm mostly just re-hashing the original commit
>>> from Kever that was reverted since:
>>> * Turning on partial power down on rk3288 doesn't "just work".  I
>>>     don't get hotplug events.  This is despite dwc2 auto-detecting that
>>>     we are power optimized.
>> What do you mean by doesn't "just work" ? It seem to me that even after
>> adding this patch you don't get issues fixed.
>> You mention that you don't get the hotplug events. Please provide dwc2
>> debug logs and register dumps on this issue.
> 
> I mean that partial power down in the currently upstream driver
> doesn't work.  AKA: if I turn on partial power down in the upstream
> driver then hotplug events break.  I can try to provide some logs.  On
> what exact version of the code do you want logs?  Just your series?
> Just my series?  Mainline?  Some attempt at combining both series?  As
> I said things seem to sorta work with the combined series.  I can try
> to clarify if that's the series you want me to test with.  ...or I can
> wait for your next version?
As I said this patch doesn't fix the issue with hotplug. With this patch 
or without the hotplug behaves as it was. I have tested it on our setup.

Have you debugged your patch? Does it make any difference on your setup 
? Does it fix the issue with hotplug?

Try to debug with the following steps.
1. Debug code with just your patch. Capture the logs and provide. So 
that I can see what is difference with your patch.
2. Debug only with my series and see if those issues with hotplug are 
still there.


> 
> 
>>> @@ -4506,21 +4507,35 @@ static int _dwc2_hcd_suspend(struct usb_hcd *hcd)
>>>         */
>>>        if (!hsotg->bus_suspended) {
>>>                hprt0 = dwc2_read_hprt0(hsotg);
>>> -             hprt0 |= HPRT0_SUSP;
>>> -             hprt0 &= ~HPRT0_PWR;
>>> -             dwc2_writel(hsotg, hprt0, HPRT0);
>>> -             spin_unlock_irqrestore(&hsotg->lock, flags);
>>> -             dwc2_vbus_supply_exit(hsotg);
>>> -             spin_lock_irqsave(&hsotg->lock, flags);
>>> +             if (hprt0 & HPRT0_CONNSTS) { > +                        hprt0 |= HPRT0_SUSP;
>> Here you set "HPRT0_SUSP" bit but what if core doesn't support both
>> hibernation and Partial Power down assuming that
>> hsotg->params.power_down" value us equal to "DWC2_POWER_DOWN_PARAM_NONE"
>> which is 0.
> 
> I am by no means an expert on dwc2, but an assumption made in my patch
> is that even cores that can't support partial power down can still
> save some amount of power when hcd_suspend is called.
Have you tried to debug dwc2 with power_down == DWC2_POWER_DOWN_PARAM_NONE ?
> 
> Some evidence that this should be possible: looking at mainline Linux
> and at dwc2_port_suspend(), I see:
> 
> * It is currently called even when we have DWC2_POWER_DOWN_PARAM_NONE
Currently (without your and my patches) (looking at mainline Linux) the 
function dwc2_port_suspend() is called anyway because its call is issued 
by the system. But it performs entering to suspend only in case of 
DWC2_POWER_DOWN_PARAM_PARTIAL.

This is not an assumption. What I am pointing out is based on debugging 
and before making assumptions without debugging for me seems not ok.

Currently without your patch and without my patches. In the 
dwc2_port_suspend() it will enter to suspend only in case that 
power_down == DWC2_POWER_DOWN_PARAM_PARTIAL. Because if you look at the 
code more carefully you will see

  	if (hsotg->params.power_down != DWC2_POWER_DOWN_PARAM_PARTIAL)
		goto skip_power_saving;

This says if power_down is not DWC2_POWER_DOWN_PARAM_PARTIAL then skip 
power saving.

So but after your patch. If power_down is DWC2_POWER_DOWN_PARAM_NONE it 
tries to suspend.


> 
> * It currently sets HPRT0_SUSP
> 
> * It currently sets PCGCTL_STOPPCLK specifically in the case where
> power down is DWC2_POWER_DOWN_PARAM_NONE.
It currently (without my and your patches) doesn't set PCGCTL_STOPPCLK 
when power down is DWC2_POWER_DOWN_PARAM_NONE. Because again and again 
when power down is DWC2_POWER_DOWN_PARAM_NONE power saving is skipped.


> 
> ...I believe that the net effect of my patch ends up doing both those
> same two things in hcd_suspend.  That is: when power_down is
> DWC2_POWER_DOWN_PARAM_NONE I believe my patch is really just doing the
> same thing that dwc2_port_suspend() would do in the same case.  Is
> that not OK?
No if your patch is doing the same thing as it was doing before what is 
the purpose of the patch ?

My testes show that your patch doesn't fix the issue related partial 
power down.

> 
> 
> 
>>> +                     if (hsotg->params.power_down == DWC2_POWER_DOWN_PARAM_PARTIAL)
>> You make one checking of hsotg->params.power_down mode here.
>>> +                             hprt0 &= ~HPRT0_PWR;
>>> +                     dwc2_writel(hsotg, hprt0, HPRT0);
>>> +             }
>>> +             if (hsotg->params.power_down == DWC2_POWER_DOWN_PARAM_PARTIAL) {
>> another checking of power_down mode here.
> 
> Yeah, we can debate about how to best share/split code.  I'm not in
> love with the current structure either.  When I rebased your patches
> atop mine I changed this to more fully split them and I agree that was
> better.
> 
> 
>>> @@ -4592,10 +4612,12 @@ static int _dwc2_hcd_resume(struct usb_hcd *hcd)
>>>                spin_unlock_irqrestore(&hsotg->lock, flags);
>>>                dwc2_port_resume(hsotg);
>>>        } else {
>>> -             dwc2_vbus_supply_init(hsotg);
>>> +             if (hsotg->params.power_down == DWC2_POWER_DOWN_PARAM_PARTIAL) {
>>> +                     dwc2_vbus_supply_init(hsotg);
>>>
>>> -             /* Wait for controller to correctly update D+/D- level */
>>> -             usleep_range(3000, 5000);
>>> +                     /* Wait for controller to correctly update D+/D- level */
>>> +                     usleep_range(3000, 5000);
>>> +             }
>>>
>>>                /*
>>>                 * Clear Port Enable and Port Status changes.
>>>
>>
>> I have tested the patch on HAPS-DX. With this patch or without it when I
>> have a device connected core  enters to partial power down and doesn't
>> exit from it. So I cannot use the device.
> 
> Can you explain what HAPS-DX is?
It is the general setup to perform our use case testes.
For more information about the details you can google about it.

> 
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
