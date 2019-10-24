Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 792B9E2DE0
	for <lists+linux-rockchip@lfdr.de>; Thu, 24 Oct 2019 11:48:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JfJo8TbhFb019mH/bstuJY7uRNzzYCo9nqlPtcizFgA=; b=qNegB2ZX/2JGs2
	JxqGTgqI1cubDRhyiiz+SCuDBUN9EnuXlcemxDB2g4a9Nl0Zzv6BYg42Ydfwc/3QPDnvttwAa4Uvm
	ZWtIGjAB+539zTbHiCHRgA6ihFhoTsjO9yX6UUaGGOXbK/NUVTUXqVCAjTQaPgiJ1nAamrCaT8yGU
	ZyR8IvnCZmOD+pKpksenXtJ2KeoelAu+4qEQNvIJ7wjIXtVaEJuhWVIcuma6tbEcUnFsFZBCSp2B+
	7Bt/1r74B07c8uTpdVPm2Ep7kSk2ks8r1E74dVUx2FI4bw9Sb9hodGa9a/vfyeJg3tXtYtQ1t2FGg
	eUtk6CZkha44/RNjdLRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNZjk-00029N-4r; Thu, 24 Oct 2019 09:48:56 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNZjg-00028d-PQ
 for linux-rockchip@lists.infradead.org; Thu, 24 Oct 2019 09:48:54 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D94BAC0C3C;
 Thu, 24 Oct 2019 09:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1571910531; bh=vqymZi07lX4tTN+Un/XJwrwInG0vEKloyVoO/PcgCkg=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=JRaspS+8wQcPjD4NnriWztpVjxMrJXBidIfuV50nnfz+bSJ2kc7ettKmudywVMDT1
 VqZKwolQYNbYQI2oIvR78R9863V7Z38NYzmFfHlGJvSH4/1dSEl5eGTG5T7uZMDeqp
 gqbNNfHn64WepoUDZuYC2qZ3WbaC3MuM/EoWthp8TP7qfOiJpO5dhtJS3cgxJJWFKH
 cX3iPFZLY9hhW+Ha+f1In8Ee8Lx4ZmJmUau6IkfkKS4VfOSIBVWAIrCdaJBsYJESCf
 doSG3uVyKQn8BE6EfKwqG/a4cK2SDnXH3URiL17nHrdMu1CG+eYmevuy8VizGvwN+o
 GK2Zybq9ZxzRw==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id B8B64A006B;
 Thu, 24 Oct 2019 09:48:44 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 24 Oct 2019 02:47:49 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Thu, 24 Oct 2019 02:47:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MLbO637rUBRvq2kUxMpcHDtS7KGg/meTxUYCspr04cWp/D6G+TyPhGrYVU3tJgJkJRjAmWOoW7zg7UOHCQNXZ4oEbXyhHOXljqWZbINIspghbo2+8XOD9/UqXTNCQtmpRztWQV6q/H58lxOQyqoQQFTMGtB6v2bAYBPZ6KzkZ3Sp/ppKumBq3BwlzuTf1K7Aba6r9bM/edsWjqkyHZSO5k31XQ3NJpIrETXMObl2gFsYHc6wW90dy1gH9Ezo8n4dkdtQZhvwoqEeavFW/xlmI44mUusOjNtt8dfTLE7k4ySOE2UfocuC5WJfMvhQVinV2eRQzNKcuJNIKFXlp4he8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vqymZi07lX4tTN+Un/XJwrwInG0vEKloyVoO/PcgCkg=;
 b=Dh+CaD2TRO2qGebnxh7lk1ddVus4WDxYSc2xR4RLRJ7vG7Wh6rtgM64mExlG665AYWzE8Eau6KNdBdbpPmgdrB0WCoFALrHC7Eb+sQTo1eOUkF2YRPh5QIFKCAwm0SqFyXr1fAiOcpJVvSRqR0g5p9WI9og9CFDGOVb8Eb9oTG02wMFcbAwDTbjthfIStkitfRebe9A3zZR5Q17DJVx7/+HsPCBJWHx+uaZFnN1FaoveTvRF4y1TykwwsxRd39hHSt2eVCxhOoeAETMMjdXrdlqpDIZ1IRFv7kM9d7FjCT1YDa8f/R3ETlXTQYJwz4pIa1gYNNqtUAw6mNdDeB6uCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vqymZi07lX4tTN+Un/XJwrwInG0vEKloyVoO/PcgCkg=;
 b=N4ufjp4idxxNDOxyDtm/4doqg5InCtarCjTSpGY2v0o2MiGIA8qhyCPkf6aXweZlGr2JiMpmIhJtHA5QFvM0vKUni2FWxFrz967pyQOdRXXn8Dsa2m2IxO4tArqbPtbsHYO775W2pXRiUKwIxpB5zq6gt08GY5t6Sy2P66TLDtU=
Received: from CH2PR12MB4088.namprd12.prod.outlook.com (20.180.5.200) by
 CH2PR12MB4311.namprd12.prod.outlook.com (20.180.6.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.22; Thu, 24 Oct 2019 09:48:20 +0000
Received: from CH2PR12MB4088.namprd12.prod.outlook.com
 ([fe80::a499:32d2:91a1:1715]) by CH2PR12MB4088.namprd12.prod.outlook.com
 ([fe80::a499:32d2:91a1:1715%6]) with mapi id 15.20.2367.025; Thu, 24 Oct 2019
 09:48:20 +0000
From: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
To: Douglas Anderson <dianders@chromium.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Felipe Balbi <felipe.balbi@linux.intel.com>
Subject: Re: [PATCH v2] usb: dwc2: Fix NULL qh in dwc2_queue_transaction
Thread-Topic: [PATCH v2] usb: dwc2: Fix NULL qh in dwc2_queue_transaction
Thread-Index: AQHVieX3H84sjbtrEUOt2I85DdzzGadpjIiA
Date: Thu, 24 Oct 2019 09:48:20 +0000
Message-ID: <bcd6d6ff-2b62-c73d-03ea-ed103d01d026@synopsys.com>
References: <20191023140530.v2.1.I9850aab29e945168070b0a9c50c421d5485e7d97@changeid>
In-Reply-To: <20191023140530.v2.1.I9850aab29e945168070b0a9c50c421d5485e7d97@changeid>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hminas@synopsys.com; 
x-originating-ip: [92.123.244.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f855e89e-8ae7-4112-6fb7-08d758674df0
x-ms-traffictypediagnostic: CH2PR12MB4311:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <CH2PR12MB4311DFA58FE80C88F7B54772A76A0@CH2PR12MB4311.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:156;
x-forefront-prvs: 0200DDA8BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(136003)(396003)(39860400002)(376002)(366004)(189003)(199004)(71200400001)(71190400001)(486006)(476003)(31686004)(6512007)(6306002)(478600001)(31696002)(86362001)(6436002)(6486002)(229853002)(2906002)(36756003)(6116002)(3846002)(11346002)(256004)(14444005)(446003)(2616005)(5660300002)(66556008)(65806001)(65956001)(66946007)(66066001)(66476007)(99286004)(110136005)(54906003)(8676002)(8936002)(66446008)(81166006)(7736002)(305945005)(76116006)(966005)(91956017)(81156014)(64756008)(14454004)(4326008)(316002)(102836004)(26005)(76176011)(186003)(53546011)(6506007)(58126008)(25786009)(6246003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CH2PR12MB4311;
 H:CH2PR12MB4088.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: d9r52e5+JbPI/FkQJV4ZM50yG/hZsLZKV7318Xs+8R7e0jXg84boscDqzBmLxQj5TIbjpquhcwnQgpuJZsLbhHYBra1ouhx1xUHKDfk4WkojeG3kHfRqBj9tbINf3GVamAB7WGR5l3ISUuueawRxDFITs67i9njL+Ij4ioMZbKpcrOopt6JrA38WrMnuuaKhl2BaAGpNQEfttVIkkFRMzoVMf37UolPDeYLnPThLU63nzknFTini5eYu1KedM5ywyL9PqE6XFMxvIW7hj1FsFOdc2JHRA/lWdxyOHL+EIlqykfe+u4DcwQSsopY1TQRrqFRMGkZwFb/eMnTknyTlWk6+hgoAHaIT+GXAzUimHOIIPHbYDka7tB+zH3iE+q9OOAliSVmA/AZ1N493EmHxjIp60gNGUsxXm/QZo0ly56m5YoLWLLQkJcD1ARbYGdc4iaDKpdGimdyNxAFN8q8v+j0yFY4GWNj9d7jiiw/EGN4=
x-ms-exchange-transport-forked: True
Content-ID: <BDF7DCB2DCE30A4880A9087654969F83@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f855e89e-8ae7-4112-6fb7-08d758674df0
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2019 09:48:20.6731 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RlwoQpwfNJd4Yjpy6wtSZ65Quj1IG/JLbW796eBdkDGUHyKMXkrUv/XYaP3DbLi5Av0I3myaaZatCofdrw9QWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4311
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_024852_885687_EEE634EB 
X-CRM114-Status: GOOD (  21.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: "stefan.wahren@i2se.com" <stefan.wahren@i2se.com>,
 Alexandru M Stan <amstan@chromium.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "mka@chromium.org" <mka@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 10/24/2019 1:06 AM, Douglas Anderson wrote:
> From: Alexandru M Stan <amstan@chromium.org>
> 
> When a usb device disconnects in a certain way, dwc2_queue_transaction
> still gets called after dwc2_hcd_cleanup_channels.
> 
> dwc2_hcd_cleanup_channels does "channel->qh = NULL;" but
> dwc2_queue_transaction still wants to dereference qh.
> This adds a check for a null qh.
> 
> Signed-off-by: Alexandru M Stan <amstan@chromium.org>
> [dianders: rebased to mainline]
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Acked-by: Minas Harutyunyan <hminas@synopsys.com>

> ---
> While testing a newer version of the Linux kernel on rk3288-veyron
> devices we saw a bunch of crashes reported in dwc2_queue_transaction()
> where chan->qh was NULL [1].  I don't know how to reproduce those
> crashes myself, but I noticed that in our 3.14 kernel we had a patch
> that probably fixed it.  That patch was sent upstream ages ago [2] but
> never landed.  Here I've rebased the patch.  While I haven't
> reproduced the crash myself, it seems fairly likely that this will fix
> the problem.
> 
> [1] https://urldefense.proofpoint.com/v2/url?u=https-3A__crbug.com_1017388&d=DwIDAQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=cQBKt4q-qzNVC53rNAwuwplH23V61rHQhhULvdLA0U8&m=cnozTly1DtI01pZ4wbwEGSQW3TtCsiwaNUy5sn5vg0w&s=7bOW1FTelQEJnZerIWHWosIBiYT6dvwbsmYTrYyzKfA&e=
> [2] https://urldefense.proofpoint.com/v2/url?u=https-3A__lore.kernel.org_r_1442952651-2D4341-2D2-2Dgit-2Dsend-2Demail-2Damstan-40chromium.org&d=DwIDAQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=cQBKt4q-qzNVC53rNAwuwplH23V61rHQhhULvdLA0U8&m=cnozTly1DtI01pZ4wbwEGSQW3TtCsiwaNUy5sn5vg0w&s=vmZjFVWnsFPU6Sgxw5IpJ-NYIAbDqyW0itJy00MLYSs&e=
> 
> Changes in v2:
> - Rebased to mainline
> 
>   drivers/usb/dwc2/hcd.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
> index 81afe553aa66..b90f858af960 100644
> --- a/drivers/usb/dwc2/hcd.c
> +++ b/drivers/usb/dwc2/hcd.c
> @@ -2824,7 +2824,7 @@ static int dwc2_queue_transaction(struct dwc2_hsotg *hsotg,
>   		list_move_tail(&chan->split_order_list_entry,
>   			       &hsotg->split_order);
>   
> -	if (hsotg->params.host_dma) {
> +	if (hsotg->params.host_dma && chan->qh) {
>   		if (hsotg->params.dma_desc_enable) {
>   			if (!chan->xfer_started ||
>   			    chan->ep_type == USB_ENDPOINT_XFER_ISOC) {
> 
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
