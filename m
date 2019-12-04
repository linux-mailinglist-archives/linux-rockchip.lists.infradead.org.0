Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0401130D4
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Dec 2019 18:32:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j/TbeaWMrV4Mj/xNdK7vs8EbzWxueTs7j55wTglJPJk=; b=TDru3BL+UfMKC3
	INNgmp3hheR6VBLP16V+wb1gm7okRcdU6L8RdBiQ0g3I3MspVSvkwAHEiFbaVHSQg4FWNfc/Wttph
	cQCUKvQNQ0ANU05/ffOF/Uoj7mT50aWi8UX/aM/sXXudjiEUYobrsqu7KBiD3i+QSd8OkbfjG28lY
	rcl/naQnSEae7w4pi3G2Of1fVzNA3MpPixzzzJfB16J1vldkLbVjApPTHoHMU/V/ah/chq3VB6pmE
	ZR6o54q5US2fCQJGMLhBdl6cMWJ7NaYjQulruCe3I+1sGl4ss4+VXy91vKpY3AdwZ2sSam27tLnk6
	MaoxtG7I/gSnio1+UX6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icYVN-0000Wr-54; Wed, 04 Dec 2019 17:32:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icYVK-0000WJ-M0; Wed, 04 Dec 2019 17:32:00 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1icYV9-0000uM-6T; Wed, 04 Dec 2019 18:31:47 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Move xin32k fixed-clock out of PX30
 DTSI
Date: Wed, 04 Dec 2019 18:31:46 +0100
Message-ID: <2665233.YyXs6BPQ7y@diego>
In-Reply-To: <20191204171537.14163-1-miquel.raynal@bootlin.com>
References: <20191204171537.14163-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_093158_872303_1CBF64AD 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Miquel,

Am Mittwoch, 4. Dezember 2019, 18:15:37 CET schrieb Miquel Raynal:
> This clock has nothing to do in the PX30 DTSI as it is supposed to be
> an input of the SoC. Moving it to the EVB DTS (only board file using
> this DTSI) makes more sense. Also, when this clock is not a fixed
> clock and comes from eg. a PMIC the situation can be described cleanly
> in the device tree (avoids having to delete the fixed-clock node
> first).
> 
> This clock is not mandatory to boot so it should not break existing
> users.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Sorry foo being the bearer of bad news again, but that issue got already
fixed by:

arm64: dts: rockchip: remove static xin32k from px30
https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?h=v5.5-armsoc/dts64&id=00519137f7d4fc19ff27f3d3f4fc45b5b222ae82

arm64: dts: rockchip: fix the px30-evb power tree
https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?h=v5.5-armsoc/dts64&id=915b6a8b54a6d436885a458867e59fb20fc6356d


On most/all Rockchip the xin32k clock is actually provided by the boards
pmic - the rk809 in this case.


Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
