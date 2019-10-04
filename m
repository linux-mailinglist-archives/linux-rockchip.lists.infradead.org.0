Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8EACC3E0
	for <lists+linux-rockchip@lfdr.de>; Fri,  4 Oct 2019 22:04:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=soKxULl0fqSuNiDTDCHwm0rmVpkTfDyi8KboZ5roBG8=; b=fAFMhGiemfhLjF
	7y8j8ehyrtaWDv6XVxC+pY1P9eLw4Z/s5nPFmPl3+8xdOm+tJZ4rGCg41w1NaqO2QfNLrblff08Cj
	nLv+nOVXxWrUorCHas8f9JFbwIv5jBJGeTmLjQx2rzzAaGZ3/ghmbMUxzEZqfVVNpKPlJfdH5+biw
	mRV8wYf+GFL+ElOC0Xr06S7hZlafdF1BJhqdFDDAX1aekaWKNdSQbkH5bFfi+5iDALQ1OYSc3Th1O
	VvbRpnZAcJW4L6J9B4yYdIoIqpQOLPe94Aed9fktsOYLOS/Vm40v3RWkGEZRx3/KT0DTNCpOlY/5c
	21iVdOmGq4OOwSk2oqcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGToG-0007HF-PV; Fri, 04 Oct 2019 20:04:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGToE-0007Gh-1R; Fri, 04 Oct 2019 20:04:15 +0000
Received: from 94.112.246.102.static.b2b.upcbusiness.cz ([94.112.246.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iGToC-0006Up-Gs; Fri, 04 Oct 2019 22:04:12 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Soeren Moch <smoch@web.de>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: fix RockPro64 vdd-log regulator
 settings
Date: Fri, 04 Oct 2019 22:04:11 +0200
Message-ID: <3200327.mLoWUYiBOS@phil>
In-Reply-To: <20191003215036.15023-1-smoch@web.de>
References: <20191003215036.15023-1-smoch@web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_130414_229802_F9828D48 
X-CRM114-Status: GOOD (  11.28  )
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 3. Oktober 2019, 23:50:34 CEST schrieb Soeren Moch:
> The RockPro64 schematic [1] page 18 states a min voltage of 0.8V and a
> max voltage of 1.4V for the VDD_LOG pwm regulator. However, there is an
> additional note that the pwm parameter needs to be modified.
> From the schematics a voltage range of 0.8V to 1.7V can be calculated.
> Additional voltage measurements on the board show that this fix indeed
> leads to the correct voltage, while without this fix the voltage was set
> too high.
> 
> [1] http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf
> 
> Fixes: e4f3fb490967 ("arm64: dts: rockchip: add initial dts support for Rockpro64")
> Signed-off-by: Soeren Moch <smoch@web.de>

applied as fix  for 5.4

Thanks for going that extra mile with all the calculations and measurements
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
