Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF085D5816
	for <lists+linux-rockchip@lfdr.de>; Sun, 13 Oct 2019 22:25:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=umvBNitwTVc1ApjhxFTuHPp+zkQGfvwgGhrkeVVMhck=; b=pbBRcvIlomCvLt
	eNICnvNxuqHtI9ykAHlr1c84w7C8IXUCgDPUqUmLikwNW4RVFqB7W4rZcqGjhqSAX0ZzcvLNRCqUB
	pkAV1FAi1G2NpsOTP9xTd9u92oztOo0KyRbRWRst9Rp0EGwgVmlJrDlI2NLCeUk/zuchRjM54Ocej
	Sr+dnYqoLXuOLdm9SSwudmMgWKDVrvHKxAd5d8r2NYLSrZqFoh7OuDexZH9cLCp5Sbw76BLA406sg
	xRn8V1H9GIQFPvM3AT0h7TpF9eHr3mOl6cMgiw3ICfjMRaeZQgHF70UmtXiMWpe9UqLyFjL45kTUD
	6mZjE6U+4SOedRk6y4NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJkQn-0003vP-A2; Sun, 13 Oct 2019 20:25:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJkQk-0003uj-HH
 for linux-rockchip@lists.infradead.org; Sun, 13 Oct 2019 20:25:31 +0000
Received: from i59f7e23a.versanet.de ([89.247.226.58] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iJkQY-0004d0-4f; Sun, 13 Oct 2019 22:25:18 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v5 3/3] ARM: dts: rockchip: Add RK3288 VOP gamma LUT
 address
Date: Sun, 13 Oct 2019 22:25:06 +0200
Message-ID: <10075567.55hLz0bBqu@phil>
In-Reply-To: <20191010194351.17940-4-ezequiel@collabora.com>
References: <20191010194351.17940-1-ezequiel@collabora.com>
 <20191010194351.17940-4-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_132530_719897_97D6948A 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 Jacopo Mondi <jacopo@jmondi.org>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, kernel@collabora.com,
 Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 10. Oktober 2019, 21:43:51 CEST schrieb Ezequiel Garcia:
> RK3288 SoC VOPs have optional support Gamma LUT setting,
> which requires specifying the Gamma LUT address in the devicetree.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

applied for 5.5

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
