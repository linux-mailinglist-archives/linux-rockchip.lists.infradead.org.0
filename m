Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE50160DE3
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Feb 2020 09:58:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JgZhm8qN/VP0RLf9WhXYwxF5RQpATy27KKuWevHPAdI=; b=AEYJTM32xFnKee
	6yJN5mEYmmh1Wh6dKNjhC/VfKgmHdceRlwcuIy4dLHWqoXmhrD3onx3Z7MQUZK2I9oCZAk8DlYZzS
	YY60iO//1X4BgMVwrbP33+HNhP3NwMeHW/OI/SPhx4GVfznkFJX9Ay8CSIweSv9jVQVfHSHv9zW7Z
	Xl662z2Vz3dz/vzcgdNbsYQj+hLn32rThLskd70o1HPsJYEQfX/i3lx7J4umZPWNO6YLx6MBa4qHa
	1yzvBumJU7OoRu2AN6kR/EnYuLekVUlVUjxgvXK/77o/O8FNHvQ91m5lbAClmxMz86K9uXnc06npo
	l3YEnbN+kLxlucwDvFVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3cEb-000846-5M; Mon, 17 Feb 2020 08:58:33 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3cEX-00083W-DP
 for linux-rockchip@lists.infradead.org; Mon, 17 Feb 2020 08:58:31 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id C153AC00A6;
 Mon, 17 Feb 2020 08:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1581929907; bh=iOnxmgvrdJqxNL+hXanzDVTZhEIyaxEmwRtTJnRIF24=;
 h=From:To:Subject:Date:References:In-Reply-To:From;
 b=Vs79YHxb6SOlkUPam61VpieWFgMy7Bi/150iN7Wg1aQoakS4P8r7HZS74FMsbkSgn
 bsSrSkE29FnPrtkwFd3NaCvjtYwQHz8BAdk2hplEpGyrQZQ1ZVY9UEORzFQ629H5wH
 KY49PCgHd3a+9F9QmL4ZytWiNAUfLXVWYPfneq+PvAsogDEZdZKxPmsTLuYb1jhtkK
 EM37x+MJ59Dr+ZbxTDFvp9w7NYXhPGH9Uvr7VxH84nVRV1C/lIcoyXMrQPsRi/NSHS
 SS1I/RKfjN55PTixTifO6pbXjle1/pEaVirjazAYK7zUPYVseesl2nkEElgEuRnz+I
 Z+XvpHKBGOVFw==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 55D55A0067;
 Mon, 17 Feb 2020 08:58:13 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 17 Feb 2020 00:58:13 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 17 Feb 2020 00:58:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A7O6GYBIiO1GSQHvhOGRIWOCliClRj9AckRzqMoxWzaoK8SV3pQy3/cpnkgAoXZ7TkABg04SF39xKl8qFKJJbbRwAih66+oIrzFqo7kFXrcs63OzY1udd+jxDFNaC4aHH/uaKFjBedcGsec6GSiIuROQafsmyvMDGrS3YxGsHqPG8fxffUL/7+XPPlOedlokWoCb11+ddA/rmtkxo8DPxfWmeFnbDDta4f7er9SVBWTSS4tqtF76rjNstcg8k4u1LcxYDN+wUBos6Z9LjA6UgA/10kIBk20l09674nZvdyjQId8QewK4dXczdnPnjld6Fn9UzUUi4NCRmY+DGXj6Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iOnxmgvrdJqxNL+hXanzDVTZhEIyaxEmwRtTJnRIF24=;
 b=OBd3BSWO3ROBCQffy7NthdkUcO8ts4Dv0Gp+S1Pjh9SZyRIv9Zo2JmmA57SlZeLPss5yOry4qg9on4nhPHU5g8qNLuAElqp0hMeNjmdu1g67yrFecST0na5AEnNTQ1RRbV1rQ07rpS6moUDHiApx4Qm4l9+dxa8UGQgnqlsE9hNFmjAbZEGVwZQuP4NPVSMV6CkCMkLdKp9I1prhUyDvFUShYrgNDhds5+RIVpuat/7jOzDFfElk3cUR5UYN4FPgWsINGoXd/CL4IUJ93EFYy1yqdC8RvcAkmnpeFbhhAzjTZbdl8V6bUFF529F93fhYH2YM9uVzAFY0efobD14Gqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iOnxmgvrdJqxNL+hXanzDVTZhEIyaxEmwRtTJnRIF24=;
 b=ie/H+3Ev9CixJxr7HH1inLw0T+ol2hFAA53KmdXKfecGfGWWdZd2byg4V/KN0nUm4On6LGWH4qn4hqBANAwAbyKK/L0C5l5lYjim4xAkotuv9mk2IrreLzjlGN30dMIeXj4m1pR/ppVFpiyMiqFr9h9CfV7ArYVpvra+kLFsmA8=
Received: from MN2PR12MB4093.namprd12.prod.outlook.com (52.135.51.203) by
 MN2PR12MB3949.namprd12.prod.outlook.com (10.255.237.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Mon, 17 Feb 2020 08:58:11 +0000
Received: from MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::35cf:644a:cfa6:72f8]) by MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::35cf:644a:cfa6:72f8%7]) with mapi id 15.20.2729.031; Mon, 17 Feb 2020
 08:58:11 +0000
From: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
To: Otavio Salvador <otavio.salvador@ossystems.com.br>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org"
 <linux-usb@vger.kernel.org>, Felipe Balbi <balbi@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, "linux-rockchip@lists.infradead.org"
 <linux-rockchip@lists.infradead.org>, Johan Hovold <johan@kernel.org>
Subject: Re: USB DWC2 stops responding when insert/remove cable multiple times
Thread-Topic: USB DWC2 stops responding when insert/remove cable multiple times
Thread-Index: AQHV4zxylJsWeUZ0JUKEDMOhhpCodKgfGkgA
Date: Mon, 17 Feb 2020 08:58:11 +0000
Message-ID: <41a7bfe7-54b1-84eb-091f-469d971ab968@synopsys.com>
References: <CAP9ODKprPi8N-dU8NaKwneXH-3b0ipSEDpU5mDbGntxuyhGhJw@mail.gmail.com>
In-Reply-To: <CAP9ODKprPi8N-dU8NaKwneXH-3b0ipSEDpU5mDbGntxuyhGhJw@mail.gmail.com>
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
x-ms-office365-filtering-correlation-id: 0c53388e-2eb4-4bd1-0239-08d7b3878449
x-ms-traffictypediagnostic: MN2PR12MB3949:
x-microsoft-antispam-prvs: <MN2PR12MB3949D20EF40CC522961D3820A7160@MN2PR12MB3949.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0316567485
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(366004)(39860400002)(346002)(396003)(136003)(189003)(199004)(110136005)(31686004)(26005)(5660300002)(36756003)(31696002)(71200400001)(478600001)(8936002)(2906002)(8676002)(81166006)(81156014)(45080400002)(2616005)(316002)(186003)(76116006)(91956017)(86362001)(6486002)(66946007)(66446008)(66476007)(53546011)(6506007)(66556008)(64756008)(6512007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR12MB3949;
 H:MN2PR12MB4093.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vkLw8dj9/zw9Q8XWNrECnekVp7s8P/O5gH6wunpZHG/iQF5ZVna6VFJO7ptKQbtyNc3cEC4cZ4e1qmqUK2YSiN5k2ikoh21RR3vlV/YiqA/Q/Ig4/r9eh4Vs1gAeLV8gsB8xCJNQeGAY22vGdFUaHLhejaXibTl5HhNr55TCuETK55nXDRlsBr4mcd5fcwGfOZae0hMXj9H+HtC3EobTGG85gsctHboITdliEsIYZsXsaO9MtAUTVF/C8eDLUOwXdGy7kprjhfupXM/MVoLUKGnb5GhBxU2brQ0Il1Irq+rcFNfF8r7C642p/beVh+s7WVKxmVDqksh7tGsIxBOocBb+HOHpK13o/t0ORwTRa7evr0W6vzZi4crvZbhmqAAQAKd6834yCUXoFwHiyBhNHTkrytpAVTQ8xOZEbwLWS8562uDkdgzGnR6PNjxy2qrY
x-ms-exchange-antispam-messagedata: GlwN/VwYvCx6J/tAioq+FG7Uu1jCQkvsPNMo93Ko1DcZdEYfpDp/BFpBWcPAgcNt1vef6WzGe9Yjt8g5M0h3dSFAbxO0bx3I2BV/ZK1LUWrG5KDn9+G562HLZTLsgF4Jxjkmjkq+XKdTPp2tr56VBw==
x-ms-exchange-transport-forked: True
Content-ID: <8607DFE13831C844ADD3AB7A0F1FFEBB@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c53388e-2eb4-4bd1-0239-08d7b3878449
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2020 08:58:11.6463 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /oVXyqfQ/Mm88mxSLD+1fhSohLTcJilYPZM4N6dphzVJX3OUIjJyI1jjjdD7uTQjxMFI6pG6reLaPU7pW/j2Qw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3949
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_005829_583452_9AE96360 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Otavio,

On 2/14/2020 5:40 PM, Otavio Salvador wrote:
>   the USB port stops responding. To recover the port we need to reload
> the g_serial module.
> 
> I have reports of it happening in the field, on the device but, until
> recently, it very hard to reproduce. We found that it is very easy to
> reproduce when we use the Microsoft Surface Dock, as hub.
> 
> Description of the host:
> 
>      Operating System: Windows 10 Pro
>      Driver: libusb-1.0 1.0.22
> 
> Description of the target:
> 
>      SoC: Rockchip RV1108G
>      Gadget: g_serial
>      Linux: 5.4.19
> 
> dmesg:
>      [   59.647746] g_serial gadget: Gadget Serial v2.4
>      [   59.648178] g_serial gadget: g_serial ready
>      [   59.653920] dwc2 30180000.usb: bound driver g_serial
>      [   59.912364] dwc2 30180000.usb: new device is high-speed
>      [   59.949981] dwc2 30180000.usb: new address 12
>      [   60.034937] g_serial gadget: high-speed config #2: CDC ACM config
>      [   65.980382] phy phy-10300000.syscon:usb2-phy@100.0: charger =
> USB_CDP_CHARGER
>      [   66.313267] dwc2 30180000.usb: new device is high-speed
>      [   66.350902] dwc2 30180000.usb: new address 13
>      [   66.388065] g_serial gadget: high-speed config #2: CDC ACM config
>      [  311.604251] dwc2 30180000.usb: new device is high-speed
>      [  311.641798] dwc2 30180000.usb: new address 14
>      [  311.745597] g_serial gadget: high-speed config #2: CDC ACM config
>      [  312.905102] dwc2 30180000.usb: new device is high-speed
>      [  312.944301] dwc2 30180000.usb: new address 15
>      [  312.967867] g_serial gadget: high-speed config #2: CDC ACM config
>      [  314.828173] dwc2 30180000.usb: new device is high-speed
>      [  314.866943] dwc2 30180000.usb: new address 16
>      [  314.889550] g_serial gadget: high-speed config #2: CDC ACM config
> 

I assume here you few time disconnected and then connected cable and 
after last connection even when g_serial seen in last line it stop work. 
Correct?

> 
> The "[  314.889550] g_serial gadget: high-speed config #2: CDC ACM
> config" message is the last time it is detected. As mentioned, to
> restore the port to work, we need to reload the g_serial module.
> 
> When we reload it, following exception happens:
> 

Actually exception happen in g_serial not dwc2. Why you assume that it 
because of dwc2?

>      [  923.962547] 9fe0: 00000002 b6346688 b65478d0 b6f4867c 600f0010
> ffffff9c 00000000 00000000
>      [  923.963304] [<c0850638>] (_raw_spin_lock_irq) from [<bf045d44>]
> (gs_close+0x2c/0x1f0 [u_serial])
>      [  923.964117] [<bf045d44>] (gs_close [u_serial]) from
> [<c04f96e8>] (tty_release+0xf0/0x49c)
>      [  923.964863] [<c04f96e8>] (tty_release) from [<c04fb5a4>]
> (tty_open+0x118/0x450)
>      [  923.965526] [<c04fb5a4>] (tty_open) from [<c02b509c>]
> (chrdev_open+0xe0/0x1b4)
>      [  923.966188] [<c02b509c>] (chrdev_open) from [<c02ac538>]
> (do_dentry_open+0x114/0x3f4)
>      [  923.966897] [<c02ac538>] (do_dentry_open) from [<c02bf778>]
> (path_openat+0x2f8/0x1128)
>      [  923.967613] [<c02bf778>] (path_openat) from [<c02c1930>]
> (do_filp_open+0x74/0xe4)
>      [  923.968290] [<c02c1930>] (do_filp_open) from [<c02adb5c>]
> (do_sys_open+0x174/0x208)
>      [  923.968985] [<c02adb5c>] (do_sys_open) from [<c0101000>]
> (ret_fast_syscall+0x0/0x54)
>      [  923.969675] Exception stack(0xc6739fa8 to 0xc6739ff0)
>      [  923.970136] 9fa0:                   003e4ff0 00674450 ffffff9c
> 003e4ff0 00000902 00000000
>      [  923.970868] 9fc0: 003e4ff0 00674450 0000000d 00000142 b57ff011
> 00040000 00040000 b6346874
>      [  923.971597] 9fe0: 00000002 b6346688 b65478d0 b6f4867c
>      [  923.972065] Code: f57ff05b e12fff1e f10c0080 f590f000 (e1903f9f)
>      [  923.972618] ---[ end trace 02edbbb9948c159c ]---
>      [  938.908716] g_serial gadget: Gadget Serial v2.4
>      [  938.909152] g_serial gadget: g_serial ready
>      [  938.917148] dwc2 30180000.usb: bound driver g_serial
>      [  939.176179] dwc2 30180000.usb: new device is high-speed
>      [  939.215459] dwc2 30180000.usb: new address 17
>      [  939.422037] g_serial gadget: high-speed config #2: CDC ACM config
> 
> So, I am a bit lost how to debug this so I'd like to know what kind of
> information might be useful to find the root cause of it?

And despite of above exception, g_serial enumerated it works fine?


Please provide me dump of follow dwc2 debugfs's: regdump, hw_params, params.

Thanks,
Minas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
