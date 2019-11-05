Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DDEF0332
	for <lists+linux-rockchip@lfdr.de>; Tue,  5 Nov 2019 17:43:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BwJxXeBUSC67bnjVatWF/OS5G4V6qTWp0NYdmufg8MM=; b=a5iGZ32jrb9d90
	rdojH321y1eCbmfybFuNOinUfbpig21CL5qcZPXVH9NOYAGDKUgSAVFh1FLPaa+H4LJaUQSnwLsP2
	AY+qWas2rIw3jerhMumylKY19m5GUtMeYqIJKmOXx5GN5XAcovusBR41AE47K1yeXXG+ywTcB94eU
	rbm8OqQn+5hsVqlFW6aHcWy5BMu1OA268lZ/VmFm3DRipMyAYYklXr7VS4VZgu+of1fUjqLZkp1tk
	fKu64TFMjGvJqYlaNcNitJ9F5BCpI1Hal2EcaOXnKlNFTMub6+YJlf5qJCihB/xHc0GXAmQ3+Ezhw
	Q/IBb6HnOgEGIOP4u2pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS1v7-0007Sz-Bs; Tue, 05 Nov 2019 16:43:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS1v3-0007SP-Ja
 for linux-rockchip@lists.infradead.org; Tue, 05 Nov 2019 16:43:03 +0000
Received: from [94.134.91.242] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iS1uw-0000AX-It; Tue, 05 Nov 2019 17:42:54 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: philippe.cornu@st.com
Subject: dw-dsi dphy timing calculations
Date: Tue, 05 Nov 2019 17:42:53 +0100
Message-ID: <19189086.sEj5AHWfUf@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_084301_792933_349AA21F 
X-CRM114-Status: UNSURE (   7.91  )
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
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Philippe,

when you did the dd the dw-dsi generalization,
dw_mipi_dsi_dphy_timing_config() did end up with static values and a
comment stating "data & clock lane timers should be computed according
to panel blankings and to the automatic clock lane control mode...".

Especially with the PHY_HS2LP_TIME(0x60) I ran into problems.
On the Google-Gru-Scarlet (ChromeOS tablet with a highres display)
everything works nicely (panel clock 229MHz) but on the device I'm
on right now (panel clock 64MHz) I end up with broken output (pixel
garbage).

When I set it to the value found in the Rockchip vendor kernel
PHY_HS2LP_TIME(0x14) that display works as expected.

The Rockchip SoC manual is pretty sparse on what this value should
actually be, so I'm hoping that you may have some insights ;-) .

So far I have found 
	https://github.com/surdupetru/huawei-p6/blob/master/kernel/huawei/hwp6_u06/drivers/video/k3/mipi_dsi.c#L97
and
	https://github.com/torvalds/linux/blob/master/drivers/gpu/drm/hisilicon/kirin/dw_drm_dsi.c#L276

but simply copying strange calculatons seems wrong, similarly
to just swapping the hardcoded value from 0x40 to my needed 0x14 ;-) .

So if you have some insights I would be most grateful :-D .

Thanks
Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
