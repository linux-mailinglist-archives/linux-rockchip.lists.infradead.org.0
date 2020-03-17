Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 135481876D8
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Mar 2020 01:27:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i9FJ4dgxln2QJv4sWAKV2kNG2VQBK//Y2yKqiRJRWMw=; b=RpKxQQCRNDjKc3
	yITRLMe/qbPa0wvmxdfx0HdsFdzOvwK27qEdp6Hkuuu+FiISix7wpJ58sASWd3MSlJAf4ZsfPOhBY
	RvRBSiSa42bY/6gZSSOUcMOVbwteGTSkisr3HpS5dc87u4PL7bnVQ5hseQF4Luq/G/sLOzLud8wef
	xZ2sw+wGaJp4pa3ncqeqreCgq3/WuJpSZIBUrgIbOzUmRjbkL86r9LdHldd3SQR+yGuXVls/9XUFw
	CAGbbR0HON8ax6KfiVCBg1NTcMOO74G/3lkM9d14IIht9MymM+oIKY9Ev/FHSpogIl58+2JC+w2hp
	QfgAJ4pAkAcVE8IVGclA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE05I-0007mQ-Ky; Tue, 17 Mar 2020 00:27:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE052-0007bU-IA; Tue, 17 Mar 2020 00:27:37 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jE051-0004Oe-74; Tue, 17 Mar 2020 01:27:35 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Joshua Watt <jpewhacker@gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Keep rk3288-tinker SD card IO powered
 during reboot
Date: Tue, 17 Mar 2020 01:27:34 +0100
Message-ID: <2163959.mC3bBs0uTH@phil>
In-Reply-To: <20200219204224.34154-1-JPEWhacker@gmail.com>
References: <20200219204224.34154-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_172736_749182_53BDE982 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Joshua Watt <JPEWhacker@gmail.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 19. Februar 2020, 21:42:20 CET schrieb Joshua Watt:
> IO voltage regulator for the SD card must be kept on all the time,
> otherwise when the board reboots the SD card can't be read by the
> bootloader.
> 
> Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>

applied for 5.7

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
