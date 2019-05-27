Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 383232AED4
	for <lists+linux-rockchip@lfdr.de>; Mon, 27 May 2019 08:39:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j2QH/JeEg2SQb+u2ApQeZSYMdvyXRwlRFTurn8hP1RY=; b=ug2KUV6cAHowfC
	Zb1hLdBi5v91zSLx8x/a7vpznOmXmE8DH7/pdK2vsUTRduyDeT7QByuG1n3kRkRbjc8cvXBpQdX93
	4gV3+/ZJ/SUuEKyUIDAhlQoc9VouO/zI5kDbJj/klQ4PjAbtXxrMG15aSTjt8+LEIvNP9FBTSZz5D
	5RSLH2GRQKAdoKFDQx92u3Vjo+EXR98x8LaBAS+1TWyuWBDE5c1HKdacSUboN4jLPSnRgT4CvYgaG
	1ggjMFQI1ejUHXeTAzaQhuAfcjkAzs6am9h+WaQMeE9eyjVAbfN8bspIpOz/ChCevdV8MBbuXaGcF
	kI5r/C2nNWTBmKB8EUwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV9IV-0002V8-8p; Mon, 27 May 2019 06:39:51 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV9IQ-0002IU-Fc
 for linux-rockchip@lists.infradead.org; Mon, 27 May 2019 06:39:48 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.209])
 by regular1.263xmail.com (Postfix) with ESMTP id AC6BF25D;
 Mon, 27 May 2019 14:39:29 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.214] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P20172T140644309780224S1558939166812534_; 
 Mon, 27 May 2019 14:39:28 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7d215520a237a6ddc5e3f04f537a11ee>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: paul.kocialkowski@bootlin.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v8 3/3] rockchip: rk3399: Add Rock PI 4 support
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Tom Rini <trini@konsulko.com>
References: <20190517102941.29145-1-jagan@amarulasolutions.com>
 <20190517102941.29145-3-jagan@amarulasolutions.com>
 <CAMty3ZBmwk-j3c4ST30CthhY4cvEfdeNA-0gbg3zfSeieNPP7g@mail.gmail.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <06a24c7e-6617-4a10-8ad9-2e7f8041253c@rock-chips.com>
Date: Mon, 27 May 2019 14:39:26 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAMty3ZBmwk-j3c4ST30CthhY4cvEfdeNA-0gbg3zfSeieNPP7g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_233946_769068_09D358A6 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Akash Gajjar <akash@openedev.com>, U-Boot-Denx <u-boot@lists.denx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jagan,


On 05/25/2019 02:28 AM, Jagan Teki wrote:
> On Fri, May 17, 2019 at 4:00 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>> Add initial support for Rock PI 4 board.
>>
>> Specification
>> - Rockchip RK3399
>> - LPDDR4
>> - eMMC
>> - SD card slot
>> - RTL8211E 1Gbps
>> - HDMI In/Out, DP, MIPI DSI/CSI
>> - PCIe M.2
>> - USB 2.0, USB-3.0
>> - USB C Type
>>
>> Commit details of rk3399-rock-pi-4.dts sync from Linux 5.1-rc2:
>> "arm64: dts: rockchip: add ROCK Pi 4 DTS support"
>> (sha1: 1b5715c602fda7b812af0e190eddcce2812e5417)
>>
>> Signed-off-by: Akash Gajjar <akash@openedev.com>
>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>> ---
>> Changes for v8:
>> - Add TPL support
>> - Now the bootchain is
>>   rkbin (TPL) -> SPL -> U-Boot proper
> Seems like Kever is busy or off (I ping him privately) and these
> patches are supposed to merge during RC's. I'm planning merge in
> tomorrow or day after, let me know if any concerns?
>

Sorry, I'm on business trip for the last whole week, and I'm back now.

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
