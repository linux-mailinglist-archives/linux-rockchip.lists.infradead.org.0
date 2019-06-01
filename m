Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7154931916
	for <lists+linux-rockchip@lfdr.de>; Sat,  1 Jun 2019 04:41:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6+fYUyhf4206+hDfF2uB4acIlRUMkOQAtNI3VBBUSMc=; b=DBRJF2xfJQtmwJ
	HsfwmBokCoW7fxiaWuJqXCVIZ/ZePCvCnLbHpjG/W4xpVPI9QKagR5iMDimA6DT0gLrSwLCtMinD9
	7NSIQsSB2gfB64ESIUXhBN/jgX5MKikRcYpBGChBJpX6ColHtou9cmGTe/V922ttugKoSQiTiPPgl
	aak8GFGfWt4iu2r1WPt83Aub7kW1f9YWx4Di9pH5xFLxEHrMUijAfCIWtfg+TDgzu3vZ9dE8W8Tx7
	NrQXUC/HAXgV4v4WNYE9M+S4dhb7dtupbGIIR2qT1VtduT0Whap7i7cHIc1F/p39MtAxq2F1bSLIM
	rEzVLYnEpV/H7I57gy4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWtxY-0004xn-KG; Sat, 01 Jun 2019 02:41:28 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWtxV-0004xG-HA
 for linux-rockchip@lists.infradead.org; Sat, 01 Jun 2019 02:41:27 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.110])
 by regular1.263xmail.com (Postfix) with ESMTP id C9AA4286;
 Sat,  1 Jun 2019 10:41:23 +0800 (CST)
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
 P18702T140552324507392S1559356882500144_; 
 Sat, 01 Jun 2019 10:41:23 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d6f6d9b47b481d155b6755024c07d8c6>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [U-Boot] [PATCH v8 3/3] rockchip: rk3399: Add Rock PI 4 support
From: Kever Yang <kever.yang@rock-chips.com>
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Tom Rini <trini@konsulko.com>
References: <20190517102941.29145-1-jagan@amarulasolutions.com>
 <20190517102941.29145-3-jagan@amarulasolutions.com>
 <CAMty3ZBmwk-j3c4ST30CthhY4cvEfdeNA-0gbg3zfSeieNPP7g@mail.gmail.com>
 <06a24c7e-6617-4a10-8ad9-2e7f8041253c@rock-chips.com>
Message-ID: <aebcc149-86b7-d30c-9f45-4c32d6c5c6d8@rock-chips.com>
Date: Sat, 1 Jun 2019 10:41:22 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <06a24c7e-6617-4a10-8ad9-2e7f8041253c@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_194125_723561_D4693358 
X-CRM114-Status: GOOD (  12.63  )
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Akash Gajjar <akash@openedev.com>, U-Boot-Denx <u-boot@lists.denx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 05/27/2019 02:39 PM, Kever Yang wrote:
> Hi Jagan,
>
>
> On 05/25/2019 02:28 AM, Jagan Teki wrote:
>> On Fri, May 17, 2019 at 4:00 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>>> Add initial support for Rock PI 4 board.
>>>
>>> Specification
>>> - Rockchip RK3399
>>> - LPDDR4
>>> - eMMC
>>> - SD card slot
>>> - RTL8211E 1Gbps
>>> - HDMI In/Out, DP, MIPI DSI/CSI
>>> - PCIe M.2
>>> - USB 2.0, USB-3.0
>>> - USB C Type
>>>
>>> Commit details of rk3399-rock-pi-4.dts sync from Linux 5.1-rc2:
>>> "arm64: dts: rockchip: add ROCK Pi 4 DTS support"
>>> (sha1: 1b5715c602fda7b812af0e190eddcce2812e5417)
>>>
>>> Signed-off-by: Akash Gajjar <akash@openedev.com>
>>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>>> ---
>>> Changes for v8:
>>> - Add TPL support
>>> - Now the bootchain is
>>>   rkbin (TPL) -> SPL -> U-Boot proper
>> Seems like Kever is busy or off (I ping him privately) and these
>> patches are supposed to merge during RC's. I'm planning merge in
>> tomorrow or day after, let me know if any concerns?
>>
> Sorry, I'm on business trip for the last whole week, and I'm back now.
>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Applied to u-boot-rockchip/master, thanks!

>
> Thanks,
> - Kever
>
>
> _______________________________________________
> U-Boot mailing list
> U-Boot@lists.denx.de
> https://lists.denx.de/listinfo/u-boot




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
