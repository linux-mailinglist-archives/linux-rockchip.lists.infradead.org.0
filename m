Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D302FC522
	for <lists+linux-rockchip@lfdr.de>; Thu, 14 Nov 2019 12:13:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I7QIsE0QK6dekJ7jJxQw8JPqCMLofx0siSsGtCv6gX0=; b=bVDSYwRVGAUWfS
	EvbDr3il+OIe2Nqf9/5wu7usb9B9BpBgy3GHbHson/qnPsxdAIfYimOJX8INeDtmd7/h/rri0Z+Vs
	eESxQSEWEYz4rVv+2ApaMPwct/IuI6Ok0hSThvR2MJO8Crn0BjNRsftkgF+cb/leUqQ/+2Ry7JsOt
	CwVCl+lPitNtQKi60JF3ZOP6M+C6ZDtwCJjGVlRNSpK2spPZx8dhfh0ssDldOroNZvaExScqLD9yf
	nRwXMBSGtbbUWjiv4MOnTgJBRYS6NeJoJ1WfclHGWkhXUoQvSuNoOHjseSvnRLMv321C5PYZPlL9x
	0XAIyGMTxHiZDppMSYJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVD4B-0000wq-Mr; Thu, 14 Nov 2019 11:13:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVD42-0000eQ-1i; Thu, 14 Nov 2019 11:13:27 +0000
Received: from wf0530.dip.tu-dresden.de ([141.76.182.18] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iVD3u-0001yy-Nm; Thu, 14 Nov 2019 12:13:18 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable HDMI Sound on rk3399-roc-pc
Date: Thu, 14 Nov 2019 12:13:17 +0100
Message-ID: <35001517.YkhzgzjICv@phil>
In-Reply-To: <c9db5599-743b-bb90-999e-5989be6556ac@fivetechno.de>
References: <c9db5599-743b-bb90-999e-5989be6556ac@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_031326_239102_E7ECC570 
X-CRM114-Status: UNSURE (   9.34  )
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
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Montag, 11. November 2019, 15:37:41 CET schrieb Markus Reichl:
> HDMI-Sound is the only available sound card on rk3399-roc-pc, enable it.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>

applied for 5.6 (probably)

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
