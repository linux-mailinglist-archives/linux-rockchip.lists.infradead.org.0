Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C123D666BF
	for <lists+linux-rockchip@lfdr.de>; Fri, 12 Jul 2019 08:08:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3pU5ib+e7gmamlfdp4dgHoIMiuTPpOVXsvy1J3qIldU=; b=BONvFfvU0QhZ5n
	ggGW32wtEv6dXT6ySLsDaK5t1PMXAqNe9TuuK58OyMjOcZpkaftOL52Im+rGhI0uHwb8vHh2jlNqO
	m5iRzH5yYtRz0o85MFK4qayzpAh9T+FPJBOgMdMkeMQYy3/jTXW29s675jvHfoTYGrlTADSovzyAh
	eSWOHcVAjdvBGS2Vzkwl0XZqt1XW5liEG24V3BRE2Vn5oucbXyOCbuLDW0f/gWCBGCvei2rxTr3Ps
	nVjTftsMrKbrSewjJl3UsxUQrF0nUDUTFX8m/nRh5mavrw1ycBAT8bd9gwECKAgKoI5D9jtIVKmmC
	/36ftzEylZbNDy/IfzKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloj1-0006uT-Gb; Fri, 12 Jul 2019 06:08:07 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hloil-0006l2-8p
 for linux-rockchip@lists.infradead.org; Fri, 12 Jul 2019 06:07:54 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id C2829803AE;
 Fri, 12 Jul 2019 08:07:43 +0200 (CEST)
Date: Fri, 12 Jul 2019 08:07:37 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v6 0/3] drm/panel: simple: Add mode support to devicetree
Message-ID: <20190712060737.GA9569@ravnborg.org>
References: <20190711203455.125667-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190711203455.125667-1-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=e5mUnYsNAAAA:8
 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=O475EGwODiYbJdBmdVwA:9
 a=CjuIK1q_8ugA:10 a=PO69wPE_V6wA:10 a=Vxmtnl_E_bksehYqCbjh:22
 a=AjGcO6oz07-iQ99wixmX:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_230752_584972_A68AFA07 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
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
Cc: Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, Thierry Reding <thierry.reding@gmail.com>,
 Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, Ezequiel Garcia <ezequiel@collabora.com>,
 mka@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Doug.

On Thu, Jul 11, 2019 at 01:34:52PM -0700, Douglas Anderson wrote:
> I'm reviving Sean Paul's old patchset to get mode support in device
> tree.  The cover letter for his v3 is at:
> https://lists.freedesktop.org/archives/dri-devel/2018-February/165162.html
> 
> v6 of this patch is just a repost of the 3 DRM patches in v5 rebased
> atop drm-misc.  A few notes:
> - I've dropped the bindings patch.  Commit 821a1f7171ae ("dt-bindings:
>   display: Convert common panel bindings to DT schema") has landed and
>   Rob H said [1] that when that landed the bindings were implicitly
>   supported.
> - Since the bindings patch was dropped I am assuming that Heiko
>   can just pick up the .dts patches from the v5 series.  I
>   double-checked with him and he confirmed this is fine.  Thus I
>   have left the device tree patches out of this version.
> 
> There were some coding style discussions on v5 of the path but it's
> been agreed that we can land this series as-is and after it lands we
> can address the minor style issues.
> 
> [1] https://lkml.kernel.org/r/CAL_JsqJGtUTpJL+SDEKi09aDT4yDzY4x9KwYmz08NaZcn=nHfA@mail.gmail.com
> 
> Changes in v6:
> - Rebased to drm-misc next
> - Added tags
...

Thanks for your patience with this.
Applied to drm-misc-next and pushed out.

	Sam

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
