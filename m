Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 052F21BADB8
	for <lists+linux-rockchip@lfdr.de>; Mon, 27 Apr 2020 21:19:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xPUU3UNNONBMXf+CXOgqUN+CS0V4g7U9Ts79GS2zjIw=; b=gr3njiSGkyWV+y
	hk/+KFA623gABWtf9KdQwwhmtxwISO4k3kXa36xk5MrufGCjgcHsqo0M2ybaalQ+ScWoFpNf4Cewl
	gQofKt485YEQQuXgTxw8M8zEUF7lwBfvRpP/Pv5fpdzAfFH17SNqnlEc9XcRYNJqxOa7xil4vom6C
	EwVeO1owQ+rPlX39gy3VpSv9yUIKDQx4PXnrDeHEj0GuImpNDHW101LMSHUHlajXHg+yAJLJGtR+S
	MEXUTS0guQ/LaBhmVRSSdEh+z+Y/wpt1Siv8IFDNqG4wWL52ObdQuzDvBHlcHKpmwkM3gOnYSuwu7
	SCW0CzVzASmoh5Pvonaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9Hg-0008Rl-9n; Mon, 27 Apr 2020 19:19:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9HE-00081Q-FV; Mon, 27 Apr 2020 19:18:49 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jT9H7-0008PW-0i; Mon, 27 Apr 2020 21:18:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org, airlied@linux.ie, daniel@ffwll.ch,
 linux-rockchip@lists.infradead.org, Zheng Bin <zhengbin13@huawei.com>,
 dri-devel@lists.freedesktop.org, hjc@rock-chips.com
Subject: Re: [PATCH] drm/rockchip: Remove unneeded semicolon
Date: Mon, 27 Apr 2020 21:18:38 +0200
Message-Id: <158801509401.47920.4814357124924437922.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200424074410.1070-1-zhengbin13@huawei.com>
References: <20200424074410.1070-1-zhengbin13@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_121848_520085_657E8820 
X-CRM114-Status: UNSURE (   6.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, 24 Apr 2020 15:44:10 +0800, Zheng Bin wrote:
> Fixes coccicheck warning:
> 
> drivers/gpu/drm/rockchip/cdn-dp-reg.c:604:2-3: Unneeded semicolon
> drivers/gpu/drm/rockchip/cdn-dp-reg.c:622:2-3: Unneeded semicolon
> drivers/gpu/drm/rockchip/cdn-dp-reg.c:703:2-3: Unneeded semicolon
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Zheng Bin <zhengbin13@huawei.com>
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: Remove unneeded semicolon
      commit: 611e22b1d9f61a8742c99433de9ff40795574c61

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
