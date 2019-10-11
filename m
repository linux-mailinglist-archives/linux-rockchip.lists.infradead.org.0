Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7415D4101
	for <lists+linux-rockchip@lfdr.de>; Fri, 11 Oct 2019 15:22:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kPo8LmzA8DsONgAhPob9QYvWWXP74n6N1A+7uyuj7JU=; b=PptC/Hyy2Cs1zl
	2fQtI3EgO8dgeA3aM7e2yvtx1WnukCJD16q5DwtOV213w47gAUAy7Buf9ldIdSzAwnmq8URSS6bk8
	xuzhb3opRvQDjxSvyiiQRb2or3v+R8oBkG6Dksa1w4lqB2CUs0ymFcChrPdpkFPs8N5Wj2cTRbASN
	ho1ogOObAlI4Hre3U2uQZpcqf1DJWLCBV0diXq9YULu9ac6en1JPotViwnjmzNlMyoUFTmH/cDjmK
	IUbq7nnNmwN0IKTteiqoIwyThl0HMN4mAJXmuujt/Yy5u4Y5uAr1MhDi7yDk4uBKASPJqDb9Z6Af1
	goTQphInjK63VUMv95Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIury-0001BF-8X; Fri, 11 Oct 2019 13:22:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIurv-0001Ah-7n
 for linux-rockchip@lists.infradead.org; Fri, 11 Oct 2019 13:22:08 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iIurp-0002Fu-1L; Fri, 11 Oct 2019 15:22:01 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v5 0/3] RK3288 Gamma LUT
Date: Fri, 11 Oct 2019 15:22:00 +0200
Message-ID: <2314316.IrHOdPmtjk@diego>
In-Reply-To: <20191010194351.17940-1-ezequiel@collabora.com>
References: <20191010194351.17940-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_062207_428198_7993AB9E 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
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

Am Donnerstag, 10. Oktober 2019, 21:43:48 CEST schrieb Ezequiel Garcia:
> New iteration, seems that we are finally converging.
> 
> For this v5, we are only doing some changes on
> the gamma_set implementation. As a result, the code
> is more readable. See the changelog in patch 2 for more
> information.
> 
> Thanks!

on rk3288 (and rk3399+rk3328 to make sure nothing breaks)
Tested-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
