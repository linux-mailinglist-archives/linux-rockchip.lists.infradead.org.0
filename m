Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CE615DD7
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 09:06:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=tOURiLkl0pWB8XMAZLjDAof0po8S3gYrAh4/nTFCyCM=; b=YK8e+gR4b2ypyx
	fxp8U1b1n7kJJEFrGvW3y8V/OzNs6kkASd40kh7EfYSbWAGQMmNnC/uSSKOwxEOpCDfgWAvnZo3hD
	Z+/pzLSiJ4fYPb9pnfd7aN201O+beEyACwx3zH1NpD26Vkyas+FnPmRU+HCZmn/0wdnRX6AEAKVtv
	ZJRlknOQqF8baIlr4a1nYxSAQtQybN9+gjokLk2lxZ++cvLxUQSwcn4HKsM2+OuWzAfJzkexhGi0y
	J4QzMJsnOCcjOd962ZlDultJt1HzLLHQwoVu8xyrtH+WZIrhvHa3FPrD3LHlmxRtAbS8GgfONmB5t
	E+IhxMZhzWOmeCa2xB+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNuAn-0005ut-OE; Tue, 07 May 2019 07:05:57 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNuAj-0005uD-50
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 07:05:56 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 74765C01E7;
 Tue,  7 May 2019 07:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1557212746; bh=UZC/NRc6Xdr1ZOxpEVn7WONo+nXBMm+s6S16TQtruXE=;
 h=From:To:CC:Subject:Date:References:From;
 b=HSkHZwLl0089pS8598+q2iene4Dcd8tdxQzTU1XMTt/tOBS3TaLsNFcXzvhBeFwU0
 Bspxf+5JSpZbxf3I7B/b4qMR/Nda8Iof/+LiHP/Z8u1G95hpQw1vqkLw9zC/qgI9dU
 jzjJmhcoG5u8UsKsbOiAjP9rfHmgfbY64c9q/Q6zVWTiUSWOPAZ85+9Yzs89s7iK7p
 8FslszdAQsiG7mh4zWCHW2vjHPMdSVgusaSxjfBlkOrF3x9ceSr/3SS5mxoZapjpHO
 VV1iDN5laBvgSQqQP64dIQV7N256l/2xD19G/xNrcSIlCXUQi8mN35iQ03NtvtexS8
 a8vpA7d/sbe5Q==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id F30C5A0095;
 Tue,  7 May 2019 07:05:47 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 7 May 2019 00:05:47 -0700
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 7 May 2019 00:05:46 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oosWBMgy/3s2+Mq3tB+lAiFIauPKwxtXKXLLHn3ypeE=;
 b=IWjUFCCoaTfkILce1sf8T64WKpnQqgG2zGgo/tpneWhJpcQm9Uq/TQattOQfuLt1VJhbHeERHI/HtdZxinZhalvj6FZtwnxB+TdwNBwDHdAQG+BDc/js6CqjTf4VbqHwxm17lLfzUmVr238FvZtwR4KjRWwTaTXuedkVKijgNFU=
Received: from SN1PR12MB2431.namprd12.prod.outlook.com (52.132.195.146) by
 SN1PR12MB2480.namprd12.prod.outlook.com (52.132.196.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Tue, 7 May 2019 07:05:45 +0000
Received: from SN1PR12MB2431.namprd12.prod.outlook.com
 ([fe80::1982:4b45:2adf:9a1f]) by SN1PR12MB2431.namprd12.prod.outlook.com
 ([fe80::1982:4b45:2adf:9a1f%4]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 07:05:45 +0000
From: Artur Petrosyan <Arthur.Petrosyan@synopsys.com>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 1/5] usb: dwc2: bus suspend/resume for hosts with
 DWC2_POWER_DOWN_PARAM_NONE
Thread-Topic: [PATCH v2 1/5] usb: dwc2: bus suspend/resume for hosts with
 DWC2_POWER_DOWN_PARAM_NONE
Thread-Index: AQHU9XvT/eL2bASAskajIQu3Y3ICkw==
Date: Tue, 7 May 2019 07:05:45 +0000
Message-ID: <SN1PR12MB243183AAC5636C23144634FBA7310@SN1PR12MB2431.namprd12.prod.outlook.com>
References: <20190418001356.124334-1-dianders@chromium.org>
 <20190418001356.124334-2-dianders@chromium.org>
 <CAD=FV=UGjQz9Di=NL_r_g1Hofqv-FWBywfSm9Vu6gGr22wzPrA@mail.gmail.com>
 <SN1PR12MB243136608514210F3E3E536EA7350@SN1PR12MB2431.namprd12.prod.outlook.com>
 <CAD=FV=V97+_cQ1aD=w_a3SifGOG3M5DPvcnvxYVUJMkX_WLTFg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=arturp@synopsys.com; 
x-originating-ip: [23.201.30.244]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 29437df8-1b63-41c6-b375-08d6d2ba6d1e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:SN1PR12MB2480; 
x-ms-traffictypediagnostic: SN1PR12MB2480:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <SN1PR12MB24804DCFF30D0EA71522CC6CA7310@SN1PR12MB2480.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:294;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39850400004)(376002)(366004)(396003)(346002)(136003)(189003)(199004)(55674003)(8676002)(71200400001)(8936002)(76176011)(71190400001)(55016002)(476003)(6916009)(81166006)(9686003)(81156014)(6306002)(7736002)(74316002)(5660300002)(52536014)(7416002)(229853002)(14454004)(33656002)(316002)(6436002)(86362001)(478600001)(7696005)(486006)(966005)(99286004)(53936002)(6506007)(3846002)(186003)(102836004)(66446008)(64756008)(66556008)(66476007)(53546011)(6246003)(54906003)(6116002)(305945005)(66066001)(26005)(25786009)(68736007)(256004)(446003)(15650500001)(73956011)(66946007)(2906002)(76116006)(14444005)(4326008)(91956017);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN1PR12MB2480;
 H:SN1PR12MB2431.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: yNni9roYFD9aphHVuRtUx+6CaKJQdeU4KZtxxmffcJTNDsUF3yNZQ8BjVztcd98KRZI9/OZfCqXMrc2vkxL1aenX22NU0JTnfLowIGV7oAqeEqoKSzM2Z36zRrHxDXoWzg8i0miLrkIr3aTbOTuGyIRpx8LHK0b52dkRv4WdWLB2LoO08tKpuW4vfr5yehp4hzraP+pblAmxEVS54dSygqMGDOSPiMmrNyeOj/17AMfTs6IoDD7ak3tR3nGA5QCKLnfHk9+sHlqOyTPlMvvkjKNWKa0Dd4wGlavr3/nVUUsd1vZcyHxPqEqO3MMNUibTKncMxSf0iuNxa7gWxBLOlcZTuDZRO5WxPP65vNmlHLkUcq4k0anijHFbHSJc4vdLV7JOPzlNj3ZPr8vxMBMVrVTB8HBDHigxSCs9VrIYj/Y=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 29437df8-1b63-41c6-b375-08d6d2ba6d1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 07:05:45.5422 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR12MB2480
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_000554_267038_B379B126 
X-CRM114-Status: GOOD (  20.63  )
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
 Alexandru M Stan <amstan@chromium.org>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chris <zyw@rock-chips.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Alan Stern <stern@rowland.harvard.edu>,
 Elaine Zhang <zhangqing@rock-chips.com>, Julius  Werner <jwerner@chromium.org>,
 William Wu <william.wu@rock-chips.com>, Ryan Case <ryandcase@chromium.org>,
 =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On 5/3/2019 19:08, Doug Anderson wrote:
> Hi,
> 
> On Fri, May 3, 2019 at 1:25 AM Artur Petrosyan
> <Arthur.Petrosyan@synopsys.com> wrote:
>>
>> On 5/2/2019 03:58, Doug Anderson wrote:
>>> Hi,
>>>
>>>
>>> On Wed, Apr 17, 2019 at 5:15 PM Douglas Anderson <dianders@chromium.org> wrote:
>>>>
>>>> This is an attempt to rehash commit 0cf884e819e0 ("usb: dwc2: add bus
>>>> suspend/resume for dwc2") on ToT.  That commit was reverted in commit
>>>> b0bb9bb6ce01 ("Revert "usb: dwc2: add bus suspend/resume for dwc2"")
>>>> because apparently it broke the Altera SOCFPGA.
>>>>
>>>> With all the changes that have happened to dwc2 in the meantime, it's
>>>> possible that the Altera SOCFPGA will just magically work with this
>>>> change now.  ...and it would be good to get bus suspend/resume
>>>> implemented.
>>>>
>>>> This change is a forward port of one that's been living in the Chrome
>>>> OS 3.14 kernel tree.
>>>>
>>>> Signed-off-by: Douglas Anderson <dianders@chromium.org>
>>>> ---
>>>> This patch was last posted at:
>>>>
>>>> https://urldefense.proofpoint.com/v2/url?u=https-3A__lkml.kernel.org_r_1446237173-2D15263-2D1-2Dgit-2Dsend-2Demail-2Ddianders-40chromium.org&d=DwIBaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7niMJI&m=7rxT8EFX9mqUDtTL4P7iuzYNsYROe9rxHGCresSKPTg&s=lTaNUA2XIYPat417fkd1A4Zpvb5eyYtTc1H_NIfW8Vw&e=
>>>>
>>>> ...and appears to have died the death of silence.  Maybe it could get
>>>> some bake time in linuxnext if we can't find any proactive testing?
>>>>
>>>> I will also freely admit that I don't know tons about the theory
>>>> behind this patch.  I'm mostly just re-hashing the original commit
>>>> from Kever that was reverted since:
>>>> * Turning on partial power down on rk3288 doesn't "just work".  I
>>>>     don't get hotplug events.  This is despite dwc2 auto-detecting that
>>>>     we are power optimized.
>>>> * If we don't do something like this commit we don't get into as low
>>>>     of a power mode.
>>>
>>> OK, I spent the day digging more into this patch to confirm that it's
>>> really the right thing to do.  ...and it still seems to be.
>>>
>>> First off: I'm pretty sure the above sentence "If we don't do
>>> something like this commit we don't get into as low of a power mode."
>>> is totally wrong.  Luckily it's "after the cut" and not part of the
>>> commit message.  Specifically I did a bunch of power testing and I
>>> couldn't find any instance saving power after this patch.
>>>
>>> ...but, then I looked more carefully at all the history of this
>>> commit.  I ended up at:
>>>
>>> https://urldefense.proofpoint.com/v2/url?u=https-3A__chromium-2Dreview.googlesource.com_c_chromiumos_third-5Fparty_kernel_-2B_306265_&d=DwIBaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7niMJI&m=7rxT8EFX9mqUDtTL4P7iuzYNsYROe9rxHGCresSKPTg&s=LiyyIyaCPmr88nJeI7TCGtoJBFLRWir_reikYtAHHDw&e=
>> Looking at this code review I see that this patch fixes whatever issues
>> you have on Chrome OS 3.14. But your patch has landed on the top of
>> latest Kernel version. With the latest version I think you would not
>> have the regression issue.
>> So you are fixing Chrome OS 3.14.
> 
> I'm confused why you ignored the rest of my email where I said I also
> ported it to 4.19 (which, from a dwc2 host point of view, is pretty
> much mainline) and saw that the patch was still needed.
I didn't ignore it just I had to perform testes and reply to it with 
another email.
> 
> -Doug
> 
I spent yesterday debugging and performing testes with Linux Mainline. 
So when we don't have any of power saving modes supported and the 
power_down is DWC2_POWER_DOWN_PARAM_NONE. We can set "PCGCTL_STOPPCLK" 
bit whenever there is suspend ( Checked the programming guide and data 
book). I have not seen any case that this affects the flow. I have not 
been able to see if after setting "PCGCTL_STOPPCLK" bit there is any 
power saved or driver behaved differently. Maybe it is platform depended 
. However, there is a possibility that this might save power.

So as this is not breaking anything. I am ok with this patch.

-- 
Regards,
Artur

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
