Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E97B21FCA7E
	for <lists+linux-rockchip@lfdr.de>; Wed, 17 Jun 2020 12:07:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ynp36uCVHFUnrtF7lSRiLx9Vvi2d1k03240Zss4xomQ=; b=opql3tSdkkpiuV
	SzhGUiprlkl33tSDlPAP3y6r27tPy+f1BO2918hQ5Qw1bKCjitMBJrlwq8FJO7hbReDsMXElZcqc5
	Ms6tZ6/F+bPeFikxl7SUnv+PPGhcW6PhIkQdxMoBqHsg/ypXWLbWUaxZgLYfBo/4WnjznoiE2QkEh
	9cCsdSVUlv1pfDTeyOXgB8ciV0By9imcvTFe4eiza5sPvXjx2KR0YZx621S5oZ/uiHAh7GYcYR8dB
	4Mns4xGcVGr3wq9eFp9BZQua7xtInTX7xfexZg3xAWAxDfTkymnCxZCi9NLWFnL7EEAklQtcrtVV8
	ZGrWsRaDLX4FL2dc+ahw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlUyf-0007cb-O7; Wed, 17 Jun 2020 10:07:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlUyd-0007cB-HP; Wed, 17 Jun 2020 10:07:28 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jlUyb-0006xc-4j; Wed, 17 Jun 2020 12:07:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: Add per-pixel alpha support for the PX30 VOP
Date: Wed, 17 Jun 2020 12:07:23 +0200
Message-Id: <159238836640.1484955.4774492722376755146.b4-ty@sntech.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200416140526.262533-1-paul.kocialkowski@bootlin.com>
References: <20200416140526.262533-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_030727_573546_117199B8 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Sandy Huang <hjc@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, 16 Apr 2020 16:05:26 +0200, Paul Kocialkowski wrote:
> Compared to its predecessors, the PX30 VOP has a different register layout
> for enabling per-pixel alpha. Instead of src_alpha_ctl and dst_alpha_ctl,
> there is a single alpha control register. This register takes some fields
> from src_alpha_ctl, but with a different layout.
> 
> Add support for the required fields to the PX30 VOP window descriptions,
> which makes per-pixel-alpha formats behave correctly.

Applied, thanks!

[1/1] drm/rockchip: Add per-pixel alpha support for the PX30 VOP
      commit: 2aae8ed1f390a42ec752e4403ffca877fb3260e1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
