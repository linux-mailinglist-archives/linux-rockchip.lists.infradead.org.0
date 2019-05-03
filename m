Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA869129D9
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 May 2019 10:26:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=qv9dvXXn28ROn3AgGmTRARFIbq6rj8rsIoeYMqtjAjg=; b=qdfy7CXquH754U
	9m71vBsP8WjNW4WTkpAhLSnAEc1D33s/XfG4bRnoFbK/jzDEwdOB3h33SRIbSd87pQ4l34/YStONK
	LZZxrIp+4js1xuDzDc8TPyvKh7z9qTh5tchZvN4X5mGQMdON3xjioJjVxMv382CkS6BsxW+N6ZTAk
	cOVEjjawMwLr8aey2OXvTMRFF8Rq0hSmL0kD5zIx7HP2GcPN4ASNOFNf8vn6cMb7TNgOq5ZrPWg9N
	TsHNgo7m96d0KnzdGSRMd80LztO1tjLl7DUi2vBK5Oh+H2VjIhc9/7EnMa8yXARwkWUl3yLkDtVME
	WWfDxwEOuqEP2rJNX03A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMTW6-0005Gs-CX; Fri, 03 May 2019 08:26:02 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMTW1-0005G7-Tg
 for linux-rockchip@lists.infradead.org; Fri, 03 May 2019 08:25:59 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 27DF5C00D4;
 Fri,  3 May 2019 08:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1556871958; bh=TDDiLYFs1Tz29Y569eCVx9eKZJ50zXOYAYMtGl6RwPI=;
 h=From:To:CC:Subject:Date:References:From;
 b=RFVPOzXP4WCYRGY4caMK5fLv2J575zH2zKt2fB+L1DJsEcJpaAFEaFOvlHhKnwxhe
 ckerIIv+Syl8zNvawQXW9lNPX65+8QHLIyfBgOgtNXZkHkfXpQBMwUhw07gpJaaqqU
 xgWmx5g9IrLKPC3zTG8JSYXIvxlUmP1wywsgQSVU1/5hkTE6yRleOXVG8z7cEJD4FI
 pGs59cBkLcmjh1akeVVzk2ZDmvd8Z9jHlHhnz+ISypAO3BNU557c4eUObr6NYyr+34
 nR+bdUzvxof3qkrWykdgN6sV8LafIGBltFyLwqLC60gkMSlg4cWlK6LJdQzetn20qT
 URLECllwWXyNA==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 97D9DA0068;
 Fri,  3 May 2019 08:25:50 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 us01wehtc1.internal.synopsys.com (10.12.239.235) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 3 May 2019 01:25:50 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 3 May 2019 01:25:49 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YaXa2Joky9+Rybuhy2LSVpHEWORiNzbGDbbXpwgJmk4=;
 b=Ji7DFkIsOZECVY/Y0gj8nXzPQMTnrFsuq+Y5geZZvmhTlaRfzoRtPLdWOEXXPOyVr1ajHqd76Wg3z5T1c/qu3l9O68eZM6SBBu7q8nii/vQuUv2gJrwDnr5UOMlRgSjjA91dicg66lmE0AYe0Q10I9jXnNglsq2AdbK/m//YzR8=
Received: from SN1PR12MB2431.namprd12.prod.outlook.com (52.132.195.146) by
 SN1PR12MB2384.namprd12.prod.outlook.com (52.132.194.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Fri, 3 May 2019 08:25:48 +0000
Received: from SN1PR12MB2431.namprd12.prod.outlook.com
 ([fe80::1982:4b45:2adf:9a1f]) by SN1PR12MB2431.namprd12.prod.outlook.com
 ([fe80::1982:4b45:2adf:9a1f%4]) with mapi id 15.20.1856.012; Fri, 3 May 2019
 08:25:48 +0000
From: Artur Petrosyan <Arthur.Petrosyan@synopsys.com>
To: Doug Anderson <dianders@chromium.org>,
 Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v2 1/5] usb: dwc2: bus suspend/resume for hosts with
 DWC2_POWER_DOWN_PARAM_NONE
Thread-Topic: [PATCH v2 1/5] usb: dwc2: bus suspend/resume for hosts with
 DWC2_POWER_DOWN_PARAM_NONE
Thread-Index: AQHU9XvT/eL2bASAskajIQu3Y3ICkw==
Date: Fri, 3 May 2019 08:25:48 +0000
Message-ID: <SN1PR12MB243136608514210F3E3E536EA7350@SN1PR12MB2431.namprd12.prod.outlook.com>
References: <20190418001356.124334-1-dianders@chromium.org>
 <20190418001356.124334-2-dianders@chromium.org>
 <CAD=FV=UGjQz9Di=NL_r_g1Hofqv-FWBywfSm9Vu6gGr22wzPrA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=arturp@synopsys.com; 
x-originating-ip: [84.53.141.185]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: db7b71c4-b286-4f76-57c9-08d6cfa0f21b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:SN1PR12MB2384; 
x-ms-traffictypediagnostic: SN1PR12MB2384:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <SN1PR12MB23843A4F89B4E9FD6F5C6C18A7350@SN1PR12MB2384.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-forefront-prvs: 0026334A56
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39850400004)(396003)(346002)(136003)(376002)(199004)(189003)(55674003)(14454004)(316002)(966005)(110136005)(54906003)(74316002)(305945005)(7416002)(7736002)(478600001)(25786009)(66946007)(86362001)(5660300002)(52536014)(99286004)(7696005)(64756008)(66476007)(66556008)(66446008)(256004)(14444005)(66066001)(73956011)(76116006)(91956017)(3846002)(6116002)(4326008)(2906002)(68736007)(186003)(102836004)(6246003)(26005)(6436002)(6306002)(53936002)(55016002)(9686003)(53546011)(6506007)(81156014)(229853002)(8936002)(33656002)(446003)(81166006)(8676002)(476003)(15650500001)(486006)(71190400001)(71200400001)(76176011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN1PR12MB2384;
 H:SN1PR12MB2431.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LjIFubHGOY6KJhsRBmBHCuyioyU7bQcdzKVPy2pzETPr8inP+scRjGGlhsqwtFxiG8fZcMeBhrJScUgzbEX4RCPPQradpc3Aa2LqqUIApS8cZ2QNwPeZ37YCpJXjIXdk9A98lfJKhM+OMC2Wy7eIB93LeWP8nfKTDNjUyxmoCfHmAsSlaUJm5UN2izdHKAkhfm5TTFWcso/FYUH5BMU8OqoBZQuLwJ9o5UMp/hWK0tXojVk3/upDRAIJiPNDocJnkykCC3E7M8NYIZfkXbSDPchozsSpCgLPCHTfiKvzNmfOeNnA1t+JCrv+FnZveOXuylzir69Hpx5TaZio07Wv5OSd7dYk0kDV8lwQtKY8axSDf7Esp2UThIkx/b3+DgViBQISbdfrFlVEm+OUzeKwpVcSylkBMkpm7x2lt4Wuwgk=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: db7b71c4-b286-4f76-57c9-08d6cfa0f21b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2019 08:25:48.1117 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR12MB2384
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_012557_973296_C97E3841 
X-CRM114-Status: GOOD (  25.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chris <zyw@rock-chips.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Alan Stern <stern@rowland.harvard.edu>,
 Elaine Zhang <zhangqing@rock-chips.com>, Julius
 Werner <jwerner@chromium.org>, William Wu <william.wu@rock-chips.com>,
 Ryan Case <ryandcase@chromium.org>,
 Dinh Nguyen <dinguyen@opensource.altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 5/2/2019 03:58, Doug Anderson wrote:
> Hi,
> 
> 
> On Wed, Apr 17, 2019 at 5:15 PM Douglas Anderson <dianders@chromium.org> wrote:
>>
>> This is an attempt to rehash commit 0cf884e819e0 ("usb: dwc2: add bus
>> suspend/resume for dwc2") on ToT.  That commit was reverted in commit
>> b0bb9bb6ce01 ("Revert "usb: dwc2: add bus suspend/resume for dwc2"")
>> because apparently it broke the Altera SOCFPGA.
>>
>> With all the changes that have happened to dwc2 in the meantime, it's
>> possible that the Altera SOCFPGA will just magically work with this
>> change now.  ...and it would be good to get bus suspend/resume
>> implemented.
>>
>> This change is a forward port of one that's been living in the Chrome
>> OS 3.14 kernel tree.
>>
>> Signed-off-by: Douglas Anderson <dianders@chromium.org>
>> ---
>> This patch was last posted at:
>>
>> https://urldefense.proofpoint.com/v2/url?u=https-3A__lkml.kernel.org_r_1446237173-2D15263-2D1-2Dgit-2Dsend-2Demail-2Ddianders-40chromium.org&d=DwIBaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7niMJI&m=7rxT8EFX9mqUDtTL4P7iuzYNsYROe9rxHGCresSKPTg&s=lTaNUA2XIYPat417fkd1A4Zpvb5eyYtTc1H_NIfW8Vw&e=
>>
>> ...and appears to have died the death of silence.  Maybe it could get
>> some bake time in linuxnext if we can't find any proactive testing?
>>
>> I will also freely admit that I don't know tons about the theory
>> behind this patch.  I'm mostly just re-hashing the original commit
>> from Kever that was reverted since:
>> * Turning on partial power down on rk3288 doesn't "just work".  I
>>    don't get hotplug events.  This is despite dwc2 auto-detecting that
>>    we are power optimized.
>> * If we don't do something like this commit we don't get into as low
>>    of a power mode.
> 
> OK, I spent the day digging more into this patch to confirm that it's
> really the right thing to do.  ...and it still seems to be.
> 
> First off: I'm pretty sure the above sentence "If we don't do
> something like this commit we don't get into as low of a power mode."
> is totally wrong.  Luckily it's "after the cut" and not part of the
> commit message.  Specifically I did a bunch of power testing and I
> couldn't find any instance saving power after this patch.
> 
> ...but, then I looked more carefully at all the history of this
> commit.  I ended up at:
> 
> https://urldefense.proofpoint.com/v2/url?u=https-3A__chromium-2Dreview.googlesource.com_c_chromiumos_third-5Fparty_kernel_-2B_306265_&d=DwIBaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7niMJI&m=7rxT8EFX9mqUDtTL4P7iuzYNsYROe9rxHGCresSKPTg&s=LiyyIyaCPmr88nJeI7TCGtoJBFLRWir_reikYtAHHDw&e=
Looking at this code review I see that this patch fixes whatever issues 
you have on Chrome OS 3.14. But your patch has landed on the top of 
latest Kernel version. With the latest version I think you would not 
have the regression issue.
So you are fixing Chrome OS 3.14.

> 
> ...where I said that this fixes a resume speed regression.  More
> details could be found at the linked bug, AKA:
> 
> https://urldefense.proofpoint.com/v2/url?u=https-3A__bugs.chromium.org_p_chromium_issues_detail-3Fid-3D548336&d=DwIBaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7niMJI&m=7rxT8EFX9mqUDtTL4P7iuzYNsYROe9rxHGCresSKPTg&s=7gK8ZGX2zZPqC98CDMhqxEY3Acm_TbYa3fpQjWtvexM&e=
> 
> ...but, sadly, I wasn't as verbose as I usually am and didn't describe
> my exact testing setup.  So I tried to reproduce.  ...and I was able
> to.  I tested on an rk3288-veyron-jerry with an empty USB hub plugged
> into the left port (the host port) and my "servo 2" debug board hooked
> up to the right port.  The "power_Resume" test in Chrome OS certainly
> showed a regression in 3.14 when doing a suspend/resume cycle.
> 
> 
> Digging into the logs in 3.14, before this patch I saw this in the logs:
> 
> usb 3-1: reset high-speed USB device number 2 using dwc2
> usb 3-1.7: reset high-speed USB device number 3 using dwc2
> 
> ...after this patch:
> 
> usb 3-1: USB disconnect, device number 2
> usb 3-1.7: USB disconnect, device number 3
> usb 3-1: new high-speed USB device number 4 using dwc2
> usb 3-1: New USB device found, idVendor=1a40, idProduct=0201, bcdDevice= 1.00
> usb 3-1: New USB device strings: Mfr=0, Product=1, SerialNumber=0
> usb 3-1: Product: USB 2.0 Hub [MTT]
> usb 3-1.7: new high-speed USB device number 5 using dwc2
> usb 3-1.7: New USB device found, idVendor=1a40, idProduct=0101, bcdDevice= 1.11
> usb 3-1.7: New USB device strings: Mfr=0, Product=1, SerialNumber=0
> usb 3-1.7: Product: USB 2.0 Hub
> 
> ...so basically my belief is that without this patch we're just sorta
> leaving the device hanging and it get confused on resume.  After this
> patch we behave slightly better.
> 
> I tested on 4.19 and found much the same.  There:
> 
> usb 2-1: reset high-speed USB device number 2 using dwc2
> usb 2-1.7: reset high-speed USB device number 3 using dwc2
> 
> vs.
> 
> usb 2-1.7: USB disconnect, device number 3
> usb 2-1: USB disconnect, device number 2
> usb 2-1: new high-speed USB device number 4 using dwc2
> usb 2-1: New USB device found, idVendor=1a40, idProduct=0201, bcdDevice= 1.00
> usb 2-1: New USB device strings: Mfr=0, Product=1, SerialNumber=0
> usb 2-1: Product: USB 2.0 Hub [MTT]
> usb 2-1.7: new high-speed USB device number 5 using dwc2
> usb 2-1.7: New USB device found, idVendor=1a40, idProduct=0101, bcdDevice= 1.11
> usb 2-1.7: New USB device strings: Mfr=0, Product=1, SerialNumber=0
> usb 2-1.7: Product: USB 2.0 Hub
> 
> 
> On 4.19 I didn't actually notice a the same resume time regression,
> presumably because things are happening more asynchronously there (I
> didn't confirm this).  ...but in any case it seems like the right
> thing to do to actually do the suspend.
> 
> 
> I'll also re-iterate once more that I'm not claiming that my patch
> helps with "partial power down".  It merely makes the "power savings
> disabled" case work more properly.
> 
> 
> I'll also note that my patch is already in Felipe's "testing/next"
> branch which I continue to believe is correct and good.
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
