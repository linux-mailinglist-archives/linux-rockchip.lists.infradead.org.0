Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E3316442A
	for <lists+linux-rockchip@lfdr.de>; Wed, 19 Feb 2020 13:27:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYBN44O7xVjQfzPcFkNG8omCGgFfjKl5sG2ZPamshl8=; b=J2pTpHP+u0n12a
	IBYdK9HCOdnixQkkTk5zBFR9mens2/NsOYMOBRTrRFsFZf5Ql/RP2CnNeqwlEJwX4myPVoxyHW1PB
	nEkj4HR26QIqLATw8bj341+FdBXd4mkWaPACPDpy5cI0lqhVfjMoPbo5h+qAgiCTbY+8R0yFkB56X
	hSm4W5PCVUbFIVI5n0mo+JwXRmNMbsh6/G9IA7ZypzXRHkF+DnCeatEYQ6xLHf9rG7pJbPUbV6gKE
	t7M8jyIGFKpSoNjXTIIGk/JzIs17idMm3hs9a5/XnWpD4vEwuuSyPZWbPJB6r0Qb31XijJe3qTuiH
	pqKoNYjb0otNL4yhMYRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ORP-00022g-7Q; Wed, 19 Feb 2020 12:26:59 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ORM-000227-N5
 for linux-rockchip@lists.infradead.org; Wed, 19 Feb 2020 12:26:58 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 263B9C2D69;
 Wed, 19 Feb 2020 12:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1582115214; bh=l8BbWKskJuBth+3uu1ddH1H7sI1Iskfoy03xkorJSeU=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=MazTNckneIt6kc0US5gfw+6ILNlOar9vXofuspJ5WjH9zKUQcgO4d1QuiBO0JZEON
 GeQkhXh0YVbMaypAeYHOnn1JhFoQKcXgN9FhWXEKGr96CufiUaKTiOmCmwQmp5vMbN
 8gPMo3CLc9aawHQP4Zje7QC3WvieTwKzHK838cLR0qTqB1JzkHvht67rTo3zzUZoo3
 Cf1aL3d4cenT80ZbAdytHbWFfLfjcl4GxSwuM9V3J8h0+ZfgtiKSbiZULj1JIMl/zV
 6ubYZVLHyhgXc8E5hgR+bWAld/rgKfbcNiNVj5ohX0GCboyBeF52YLxeHzZ7h5lUfz
 WsyTC4z4of6sw==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 4A35CA0079;
 Wed, 19 Feb 2020 12:26:50 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 19 Feb 2020 04:26:50 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 19 Feb 2020 04:26:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iW37rMS5250an9DH7f3OU7eDVF+SNpOZMCjGeVQzW9G9/d3GNnPgdheFA4jCrrTKp3CaffLgJoop7rrWg/vELEDu7xD88q5nBJeNHTD90iJzydwcwVKxvhpyFgEW41bYDB46l4JQcFwLry2D4txPdGgOQYUxHBe7gFxPsiHwooL6hYBapsu3tiLaFdFF7MoU/IVDhPRUAU5wQ5oLnKgIKWS9AY3UjpHdT6uIXVsfmOZnlgd49/O6wk71Af6YyJ+bqZCApZnzbGF7Bxpn/azv7L/tLiB8oGeYiQwLqSvCqgc+iuKPpcXGQ6vgWtpuCf/V06Xze6RNGAG4XQYtwqAOEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l8BbWKskJuBth+3uu1ddH1H7sI1Iskfoy03xkorJSeU=;
 b=ByYIXH6PikHXkLABdkEJ0GQ8g5dHO5n/Djucf1OswrERKcYA0YVrhDZ6TNcfbLOX9FR5ROyEFKVAQ34AEjwJGphGhWLFHVtNl0Z9l/l09deVD6Ob1HrcAR+BUeAGKmVUvVRcQTFw0WmIGhYM/g7bUfif7ZPAZdAaRrhWm9fEVjDCXFnXFTeRZJwE1SIESQPRGZ9kEcSYacdvT7FKDUHoJIYbva0pY6Rl8fkro5P2UY8R9sPkeruD/e7cYfWxN7VQxPixwy2dV0FHos+UPQboGG8k9Zo9qcqRtZFRwPsdwaA2m4S5/jXmesZ/MfQmSqXqzTWS/UmXEKI+ZEJ+WPP84A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l8BbWKskJuBth+3uu1ddH1H7sI1Iskfoy03xkorJSeU=;
 b=jIuSxGtFW52Ax+t6ptM/Fii6Ow6NH3LfeT1h41kSVm0WZ0c6j7h9FKFE4/4U+BRi7s4zL2oheWw4Fo/h/4uUlBiSUyxUQjCljDu5x24Gi/o5hLQ5Z4aQoC/7d/17Xcjq9oHTf/KaBCuP3k+jPmpshrBgYkqrnoBC9ysDx3gpNkw=
Received: from MN2PR12MB4093.namprd12.prod.outlook.com (52.135.51.203) by
 MN2PR12MB3054.namprd12.prod.outlook.com (20.178.244.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.27; Wed, 19 Feb 2020 12:26:49 +0000
Received: from MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::35cf:644a:cfa6:72f8]) by MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::35cf:644a:cfa6:72f8%7]) with mapi id 15.20.2750.016; Wed, 19 Feb 2020
 12:26:49 +0000
From: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
To: Otavio Salvador <otavio.salvador@ossystems.com.br>,
 Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
Subject: Re: USB DWC2 stops responding when insert/remove cable multiple times
Thread-Topic: USB DWC2 stops responding when insert/remove cable multiple times
Thread-Index: AQHV4zxylJsWeUZ0JUKEDMOhhpCodKgfGkgAgAA7cgCAAA+HAIAAbA0AgAKn7gA=
Date: Wed, 19 Feb 2020 12:26:48 +0000
Message-ID: <380d765b-8867-a899-b67a-c016c09fa27b@synopsys.com>
References: <CAP9ODKprPi8N-dU8NaKwneXH-3b0ipSEDpU5mDbGntxuyhGhJw@mail.gmail.com>
 <41a7bfe7-54b1-84eb-091f-469d971ab968@synopsys.com>
 <CAP9ODKoUH=Cc=uuhfaUy7fkSVdfBHhX-6oS9_hi3Wd6GgDiZYw@mail.gmail.com>
 <ee47be28-ba9f-750f-65d2-51a722ce291d@synopsys.com>
 <CAP9ODKqa_4NSsFMUpyFDt3ohgGBCMgbOyKaVjYfSjmcZLmmC+A@mail.gmail.com>
In-Reply-To: <CAP9ODKqa_4NSsFMUpyFDt3ohgGBCMgbOyKaVjYfSjmcZLmmC+A@mail.gmail.com>
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
x-ms-office365-filtering-correlation-id: 4f89f236-7ce7-4a0a-44ff-08d7b536fe1c
x-ms-traffictypediagnostic: MN2PR12MB3054:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR12MB3054EB329C7DB8E3FE9911B8A7100@MN2PR12MB3054.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0318501FAE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(366004)(136003)(346002)(39860400002)(396003)(199004)(189003)(26005)(31696002)(5660300002)(81156014)(8936002)(86362001)(8676002)(31686004)(53546011)(6506007)(81166006)(478600001)(316002)(2906002)(71200400001)(110136005)(91956017)(6486002)(4326008)(66946007)(66476007)(66556008)(66446008)(64756008)(36756003)(186003)(6512007)(2616005)(76116006)(54906003)(473944003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR12MB3054;
 H:MN2PR12MB4093.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: achnMXyr2Xd9EZu1WTRAqhR946DiJehGH5+t9AX3AGDVWTtK+695wUfHtxueaYhS5Kz7oMAsAuVb4hDBnZq4uULgr23wiy7buL/TtQ8nxxLq0kTXrzDkq5WAmbAONKn4KtopaNts7crgWaZ+xTxMalM3EVl0L6LDWeppf+EmioLJWGs0BsKOhpnQw4SOPNYhhRMPmveQRwZShEyr1Kxx20E8rvVQsXgL6cSoWZsykjVyTHLIhHSOcHl7bTW6YhCNzrhoiG5qPXxHsH9bW5RWB51epoOe02lZdF1/dqX5F/NcDhkvQgoudJrNOes9vjDMCNzyBMIjqE+Q4864axX3Mtw9pOWaiB9YhqGy465FB4J5gZ5fT2yK1LxxxctevYJt0E5Tl/A/mP3Rpt1tSdzRpf917xoQsUq4MYvcI4Gijz6d0LHk8JvKhPrd0vXLe8SaydrAOB5fvhg9X+WSRFQwtcwiwkxKexpT6pM5jyxL42s485XkQOxM7ZgK6RbLPQoe
x-ms-exchange-antispam-messagedata: tEAWmBB1p0hW/c4Obw3Si6TzAqFx5vDdNEn5FFZF6phJJGo1aY98Cc6OU/6z6ThiUeNsmq3baD/Dja/7ypg4MaH7WNyW7wE4f8ssqAeXTBiila5TZY62Y6lU2dYD/3yG6j50wJBgLyVadsvjJrn65g==
Content-ID: <AB4A495D0FAB8F4B8E8A14B2D3F04515@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f89f236-7ce7-4a0a-44ff-08d7b536fe1c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2020 12:26:48.8936 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y06/r9cojMzxyuGnMVjji2vH7A8j/E+Se5InLXtWfwe7MSnbSu/L1Ctjse5C6tcHfC/rCBKPoucXBsGwQrqElQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3054
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_042656_879326_F8B6BE0B 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Felipe Balbi <balbi@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Otavio,

On 2/17/2020 11:53 PM, Otavio Salvador wrote:
> Hello Minas,
> 
> On Mon, Feb 17, 2020 at 10:26 AM Minas Harutyunyan
> <Minas.Harutyunyan@synopsys.com> wrote:
>> Enable debug prints to get full dwc2 debug prints to see what happen
>> with dwc2.
> 

> [ 1054.529774] dwc2 30180000.usb: ep0 state:0
> [ 1054.529785] dwc2 30180000.usb: dwc2_hsotg_start_req: DxEPCTL=0x84088200
> [ 1054.529801] dwc2 30180000.usb: dwc2_hsotg_start_req: DXEPCTL=0x80088200
> [ 1054.529928] dwc2 30180000.usb: ep2out: req 26bd9b9f: 512@06b7dbca,
> noi=0, zero=0, snok=0
> [ 1054.537095] dwc2 30180000.usb: dwc2_hsotg_irq: 04008428 00000400
> (d88c3cc4) retry 8
> [ 1054.537119] dwc2 30180000.usb: GINTSTS_ErlySusp
> [ 1054.540147] dwc2 30180000.usb: gintsts=04008828  gintmsk=d88c3cc4
> [ 1054.540172] dwc2 30180000.usb: USB SUSPEND
> [ 1054.540191] dwc2 30180000.usb: dwc2_handle_usb_suspend_intr: DSTS=0x5ad801
> [ 1054.540211] dwc2 30180000.usb: DSTS.Suspend Status=1 HWCFG4.Power
> Optimize=1 HWCFG4.Hibernation=0
> [ 1054.540242] dwc2 30180000.usb: dwc2_hsotg_irq: 04008028 00000000
> (d88c3cc4) retry 8
> [ 1054.585402] dwc2 30180000.usb: ep1in: req 01eff31b: 353@bf8d62d8,
> noi=0, zero=1, snok=0
> [ 1054.585422] dwc2 30180000.usb: dwc2_hsotg_ep_queue: submit request
> only in active state
> [ 1054.661667] dwc2 30180000.usb: dwc2_hsotg_irq: 04008428 00000400
> (d88c3cc4) retry 8
> [ 1054.661694] dwc2 30180000.usb: GINTSTS_ErlySusp
> [ 1054.664715] dwc2 30180000.usb: gintsts=04008828  gintmsk=d88c3cc4
> [ 1054.664741] dwc2 30180000.usb: USB SUSPEND
> [ 1054.664760] dwc2 30180000.usb: dwc2_handle_usb_suspend_intr: DSTS=0x5ad801
> [ 1054.664781] dwc2 30180000.usb: DSTS.Suspend Status=1 HWCFG4.Power
> 

Actually, I don't see any issue with dwc2 from the log. Only not clear 
why SUSPEND happen hear. Is it because of disconnect/connect or 
reloading g_serial?
Is this log recorded when issue seen?
Anyway, before SUSPEND and after dwc2 successfully perform transfers on 
all EP's - ep1in bulk, ep2out bulk and ep3in interrupt.
Can you provide dmesg with dwc2 debug prints with exception case inside.

> Is this information you need? If need we can gather more info.
> 


Thanks,
Minas
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
