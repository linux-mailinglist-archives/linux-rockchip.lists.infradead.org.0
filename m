Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDC217B3DB
	for <lists+linux-rockchip@lfdr.de>; Fri,  6 Mar 2020 02:41:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=15qalXHk5DYibpytXEAE2NJl/It2nL57t+EzmBucb9s=; b=PiLAOblZSksptt
	NKRqs7cBxi8OOB6AQhjmWnUZEXtMZyELO5XlfdVi0GiR8sYwsdIPwvIiDVWIfwViQBgfY1qK6CpPq
	tY3b+nP/Pgkmf/S+K6eMYQqHrwOjefcujhXVz7MnjIXT/h1Msovler6+i6QXQ6uxTmeS5qUo0PuLw
	PbYtaKeJZGs8LJGSmgxzmcPWofNkMn+98x55rnNpS6SdDOM0J8kWwq2cGMSHsHkRax1K8F8+2nTRN
	WOzr0qbod1m+q8jlkrJ9I61UBM1YAZ2W/uw4HPvDnB89ctdDYKzGav7DPYUoJsxMcZ0eNpiKvRz2G
	C4gvIPbS14iper4MmqSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA1zL-0003g8-Sr; Fri, 06 Mar 2020 01:41:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA1zI-0003fb-Q2
 for linux-rockchip@lists.infradead.org; Fri, 06 Mar 2020 01:41:18 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jA1z5-00072X-KJ; Fri, 06 Mar 2020 02:41:03 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 2/3] dt-bindings: display: panel: Add binding document
 for Elida KD35T133
Date: Fri, 06 Mar 2020 02:41:02 +0100
Message-ID: <3581159.G4WJpVV6bS@phil>
In-Reply-To: <20200229151506.750242-2-heiko@sntech.de>
References: <20200229151506.750242-1-heiko@sntech.de>
 <20200229151506.750242-2-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_174116_994781_07A6AF51 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 francescolavra.fl@gmail.com, robin.murphy@arm.com, robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org, thierry.reding@gmail.com, sam@ravnborg.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Samstag, 29. Februar 2020, 16:15:05 CET schrieb Heiko Stuebner:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The KD35T133 is a 3.5" 320x480 DSI display used in the RK3326-based
> Odroid Go Advance handheld device.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

applied to drm-misc-next with Rob's review



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
