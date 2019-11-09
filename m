Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41482F5CA3
	for <lists+linux-rockchip@lfdr.de>; Sat,  9 Nov 2019 02:16:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/kWPjks6KZaYf/shMfp4avugRusnLTROgCeJdZYQ60w=; b=hshPSriFrrxA3r
	0I5Oj+06SY9pZnBV/sM4o3LphmIOJ+ci927tUDi0id0bXgNhQfiEko1Pk/cdMU+Zibx+RzU6jSRWs
	bEjRaM1w+KBH3Za0FgvvQiAhyGo9XDHkjZoN8GJc7HwlNtsE7NWn6sWmpQ1pQ2DvovvTr0aSmOkbr
	NKICpUgUoU6bfj2Q4ZrwHd5xG+x7dDWp0wz9hQQgTeoxaS/b3W+Yl7sCTXqbrmDfLUMYpbDf3dEYv
	oIrHcYScIMbpbCQEbKZiHcZAiygc5FrnL1LQkKCHwaHt9ZvIkKU4n+Lv/69U3Hc7TyPfGLpfRA3OO
	12rchm5mBiB0ErQH4pJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTFMT-0004CF-Nf; Sat, 09 Nov 2019 01:16:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTFMQ-0004Bh-NN
 for linux-rockchip@lists.infradead.org; Sat, 09 Nov 2019 01:16:20 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iTFMN-0004aS-Fj; Sat, 09 Nov 2019 02:16:15 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix sdmmc detection on boot
Date: Sat, 09 Nov 2019 02:16:14 +0100
Message-ID: <11324931.leEh3Ic9LF@phil>
In-Reply-To: <20191016185945.1962-1-pgwipeout@gmail.com>
References: <20191016185945.1962-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_171618_910136_223C470A 
X-CRM114-Status: GOOD (  10.15  )
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
Cc: linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 16. Oktober 2019, 20:59:46 CET schrieb Peter Geis:
> With working GPIO, during init the GPIO state s reset.
> This causes the sdmmc regulator to shut down, preventing detection.
> Removing and replacing the card will allow it to be detected, but that should not be necessary.
> Fix this by setting the regulator on at boot.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>

applied for 5.5

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
