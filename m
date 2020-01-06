Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6BF131190
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Jan 2020 12:46:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DnO2aA7KG1Dj9XgA2M4KPRRRQN/Ek+tETq1GW6lPZMs=; b=Tw8BqfXJBryfG/
	RICeHkd6ACgGT6tf79vLHoCINCRhWCrHuh0trOHhjX/JuHCjPClmRUiV7y+uromHwvYu9fSTOx3li
	sZGRsPb7qHsCXkm5MG9Jf2FC5OKaBPvq0i0w4fnf4drabEMKEgT/ReTZneO/A8cxZ8m76l+fPS9y2
	ved0szVzMaAn+hX3R20ZLj3gB+/g/jvS3ThcwWCmmLAi7irOxwhmb8/Rrbuq8xSbssw9nSCz0NvqD
	Ytb9/6xwYHUnqtX/IwRVEVkOjRBGh6cdz3LHtCIQcW39CZmfeigxgGylIRa5DqG27+5DeQl84WnM9
	QtY0g5YX74yIOZo6l88g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioQq0-0004I0-15; Mon, 06 Jan 2020 11:46:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioQpw-0004Gx-LB; Mon, 06 Jan 2020 11:46:21 +0000
Received: from ip5f5a5f74.dynamic.kabel-deutschland.de ([95.90.95.116]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ioQpt-0004gS-ME; Mon, 06 Jan 2020 12:46:17 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/2] arm64: dts: rockchip: add dsi controller for px30
Date: Mon, 06 Jan 2020 12:46:17 +0100
Message-ID: <4115761.bQNJq9cmoQ@phil>
In-Reply-To: <20200106112005.795834-1-heiko@sntech.de>
References: <20200106112005.795834-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_034620_843336_36D7E2D1 
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Montag, 6. Januar 2020, 12:20:04 CET schrieb Heiko Stuebner:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> This adds the dw-mipi-dsi controller and hooks it into the
> display-subsystem on px30.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

applied for 5.6

Waiting on patch2 for the dw-dsi port patch to proceed



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
