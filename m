Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7C1129383
	for <lists+linux-rockchip@lfdr.de>; Mon, 23 Dec 2019 10:11:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Lyr3M/gcjjwrYNCs2M7Gcpl9OfMLzYzAd/2ZCRo9EE=; b=aKt2zBW1DBtTVy
	WINVCr3mwqLCQRqlYCqWMnoBu0F6XNqkjVssAeCmpOgwQjSu2ax9zwD7RKmyQFfu6WGFw7cvpQw5J
	E1M+bMLv61TtCxOjcjEq2dbutBMQevRr1PC9P3gMB4BugSDYt+JwN8l1MoBqov2boHnwUMjg3x//R
	YqHsowy8Mx0jgTfIreTOzVfMYnMXknee7YoktZLtUq1kkuQn7uHKeJepFFWE+oOICmdJK3zopHoT0
	0cxyeDLIKwYMXldWTFlTFlRg+V4Fq5l34AGkt/CzdvydxWh2ZHDi5RKbeNu7hTSkguxv8nziDRaJM
	28QAsA1d2/CXelHeE8HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijJkM-0002wo-If; Mon, 23 Dec 2019 09:11:26 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijJkJ-0002vr-17
 for linux-rockchip@lists.infradead.org; Mon, 23 Dec 2019 09:11:24 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D65FE404EA;
 Mon, 23 Dec 2019 09:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1577092280; bh=Hv0iVgDAuPZlCeCRQatDRmgquVDLbqz3a9i48srmh1U=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=DbPxPlE/gYZ5P6WThUxRo1wyaEP+hVWIWHNcxmFNcWWTXwjLT5rGmMEJlQjBhLcZg
 tkVD9C5OdKx1BZ6LeM+73qOORFXgMy67+56joqNFJMvhHCljn7yjWsKSpezeT5k/xh
 4KcG1cTDRaK+kPwZqYV7mh8tm5h+6RGA3pohc9fQrq1K7emaO+jIBTAEkZyuPWv9Ta
 5BKG5pYD+oJzbYLcP36KZSQ3tc9i/FppEL8aQtBQ6UNrYMbreI+58fQM5HmJ5FNVaf
 ZMMIgYDewBah87hafJAa+x5FRv80b/3v1F1V23w5gp2ZhX4yS0dJq70I5AyhQPY+MJ
 m/8q2YPnzKB9Q==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 82687A0079;
 Mon, 23 Dec 2019 09:11:19 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 23 Dec 2019 01:11:19 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 23 Dec 2019 01:11:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=INk2crGb+tMQIQ1h2GrulgHIDneIhqOD6AcvV7/7tZrq0wH8xpa7VYL2eF0ATn4N/Fe8RmVOHZQegNaYPv1ciib4GVdyIrdfyDBazh1QGfohdZJUONOVXmftJyExoYs1yd9BKN0wQ2HovkGhGjMYyUZ28P3K/6eQcp2c3ytRKAEzfPjFUFQpc5x6hOMebwE3zesH5lCODlJEu5ynA9rbaPK1fFuPfB7wZhzjos+JTHLsj++0yq7VhohgCo8WrLUWNm63Xm+SD2Hv5NqcEaHM1lHBedA9cXDh00FoinyVkZnjcRy3MVQaqBC0zEgzTEqqH0hbI0B8tQPWZzYfsskq+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hv0iVgDAuPZlCeCRQatDRmgquVDLbqz3a9i48srmh1U=;
 b=IyGPdb6H/rzmuNIILYuki8Z50/fnf2d+K9I+GtA7K/t/k7++Y9rjt09DkM+gXf4sGVFaYc291JA4yDR33wC+bGuo+vPeDsh9fhMjxefHbCq0uo8R4G7orqHXf1WPUomlm2qrOoq0aYBvXd0MZ9lw4vOUd1WOrZz7Pk2FOGT7FihSaZS8eDf8bLelOKl7DV3y3co0K7Rog1RHyNsXVQHP5niX4zvgAwd1+gslEEsx2i6wB4I+/GtvMpGPamz7jGZadZyee9PWYrZk4eMJfnKDW13nPLRm+m0Feu9AtdiOMqzg/cT7sl/LCMGu4mDFPVcCNyOopTdUMrBdZ675ldhMJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hv0iVgDAuPZlCeCRQatDRmgquVDLbqz3a9i48srmh1U=;
 b=UowIGnjIlLBbNDSpgZ9XyrRYTQG7rDRaobKzH4dS0+99qIYpsgQWJho/Tz/IGCT66iGmUntsYYq1QkJpKeXQFuDWSdFH1u+6oEEXeVE5jNH8DVP+zJ/KXuZRxR6s7EpdHZlF6kV8YNgPclbocde+Z95WrAh/yje4RrMpXptIN0c=
Received: from MN2PR12MB4093.namprd12.prod.outlook.com (52.135.51.203) by
 MN2PR12MB3821.namprd12.prod.outlook.com (10.255.239.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.16; Mon, 23 Dec 2019 09:11:17 +0000
Received: from MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::35cf:644a:cfa6:72f8]) by MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::35cf:644a:cfa6:72f8%7]) with mapi id 15.20.2559.017; Mon, 23 Dec 2019
 09:11:17 +0000
From: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
To: John Keeping <john@metanate.com>
Subject: Re: [PATCH 2/2] usb: dwc2: fix debugfs FIFO count
Thread-Topic: [PATCH 2/2] usb: dwc2: fix debugfs FIFO count
Thread-Index: AQHVtmBlNag4kdXlUkuNXoWIjtEH6qfHdRyA
Date: Mon, 23 Dec 2019 09:11:17 +0000
Message-ID: <11124aeb-ee8e-5794-5773-cdbcc662137c@synopsys.com>
References: <20191219113432.1229852-1-john@metanate.com>
 <20191219113432.1229852-2-john@metanate.com>
In-Reply-To: <20191219113432.1229852-2-john@metanate.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hminas@synopsys.com; 
x-originating-ip: [46.162.196.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 596b7d1c-e4ef-4f21-e7e9-08d7878811be
x-ms-traffictypediagnostic: MN2PR12MB3821:
x-microsoft-antispam-prvs: <MN2PR12MB3821DD8AAD67027AE4B179C5A72E0@MN2PR12MB3821.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0260457E99
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39860400002)(396003)(136003)(376002)(346002)(199004)(189003)(86362001)(316002)(36756003)(71200400001)(26005)(5660300002)(8676002)(2616005)(6916009)(186003)(2906002)(478600001)(91956017)(81156014)(66946007)(76116006)(66446008)(31696002)(81166006)(66476007)(66556008)(53546011)(8936002)(6506007)(64756008)(54906003)(6486002)(4326008)(31686004)(6512007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR12MB3821;
 H:MN2PR12MB4093.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lXOgYJpv8VdAcs25u3mmGK5dKKZZ3Z+JRdH0NLXvkMmSwNJkSKCdsHj45jouGZYQQblF/JZ6Nb9GDiNBVirIUhxP/EIgldoWMtu6lqfYQ+UyzJq5/TI6tQv/8LeDGt7Cb0HVBpn7kChNPBU43lC3yyIibeP+EjoGuBuVemHbmQEnrRRGQn+6DnIOLRlbJ01ygcW01nABkaeHFDSRoj1ECnrJnCZaGnZUDF17uzTQm+vMncFaAYqfygNk7si3XDUxfA3lK21R/wpK8Stk2ZTc1hadNfczYLq3yQKy9iSv7bJHopVLcS001JIuQjSFQ5/ruqg8sE5NHUpe8KPqTo+X+QuqO26/SpkmeuA118Zfjl3CUVr39Ae7KUsEElj40Xyasy9i0ts2b1fxCXnU/cBCQxH9LqqSf9AhETZ9bgZMKddQf8Rm3BJKkuHM1RmE+Ozw
x-ms-exchange-transport-forked: True
Content-ID: <8414CE18ACEF9641A914AD7891EBDF7B@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 596b7d1c-e4ef-4f21-e7e9-08d7878811be
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2019 09:11:17.7966 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xs7esTvlmRqTUAYDQAT2DliDDDyaIDMoSWxJ1+HBxFb/ZUgAF8baNX4QduqVTHVY5OF2Jo81W6I0RRWfYq9bAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3821
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_011123_078433_793C16AE 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 12/19/2019 3:34 PM, John Keeping wrote:
> The number of FIFOs may be lower than the number of endpoints.  Use the
> correct total when printing FIFO details in debugfs.
> 
> Signed-off-by: John Keeping <john@metanate.com>
> ---

Acked-by: Minas Harutyunyan <hminas@synopsys.com>


>   drivers/usb/dwc2/debugfs.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/dwc2/debugfs.c b/drivers/usb/dwc2/debugfs.c
> index b8f2790abf91..3a0dcbfbc827 100644
> --- a/drivers/usb/dwc2/debugfs.c
> +++ b/drivers/usb/dwc2/debugfs.c
> @@ -183,6 +183,7 @@ DEFINE_SHOW_ATTRIBUTE(state);
>   static int fifo_show(struct seq_file *seq, void *v)
>   {
>   	struct dwc2_hsotg *hsotg = seq->private;
> +	int fifo_count = dwc2_hsotg_tx_fifo_count(hsotg);
>   	u32 val;
>   	int idx;
>   
> @@ -196,7 +197,7 @@ static int fifo_show(struct seq_file *seq, void *v)
>   
>   	seq_puts(seq, "\nPeriodic TXFIFOs:\n");
>   
> -	for (idx = 1; idx < hsotg->num_of_eps; idx++) {
> +	for (idx = 1; idx <= fifo_count; idx++) {
>   		val = dwc2_readl(hsotg, DPTXFSIZN(idx));
>   
>   		seq_printf(seq, "\tDPTXFIFO%2d: Size %d, Start 0x%08x\n", idx,
> 
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
