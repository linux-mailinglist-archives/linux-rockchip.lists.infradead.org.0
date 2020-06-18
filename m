Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E62B1FEF53
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 12:09:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xzP+/0Vfhk7KoUHD4ecGpSFzWm5LkWvkmFMFOnU9Axo=; b=OMtgZIluSbo8Sq
	tNY4FKWtVgUQD7CKg94BhBD50I839zPEgTTxxSCj9mKl8EjEtI0EZZsbQo97kKT5YvU7dx3V6RrQa
	QmXAurG4wUxHd8fRlD628z/G5lWc1YzCU7029f85XZTQi8z7poZ1v8T4cRfsIM3yr2kls4/09j/cp
	E+EBEmVIt3mLKVBFm7XeYcd+B6y92Cbe8ejT8EjWNkQQsXojQHYzy5FEKkIn4+NY+zDkOnnezXO4B
	3NoILRcMHYxOnerPos8jD0D1b44kfMi3jbNApIiC3d54fImS8odsnkHJHAM62uqSJVfHUNLrvqrWK
	/TCfFvqO9WCUQBKwZkAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlrTt-0008ET-9j; Thu, 18 Jun 2020 10:09:13 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlrTW-00082t-6O
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 10:08:51 +0000
Received: by mail-pl1-x643.google.com with SMTP id bh7so2232598plb.11
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 03:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s1VqP9EIERD+hagFVC72DAlEZ/VXVNsM2Fw1XLYSvTI=;
 b=H3jKplbfvME7fGxdX1WtYsdu4TmOA3VQ+7/NZMWf2u8wLO0HxmPsJa8PytQ7dZf9JW
 lUToFtWYpt9pEKmHUpw6Vs5GViXY6wsEzN3mACl0EEt0ZTGmJ5t3ZUYi1Tw4ulybGMco
 pYEiOxUiYIZleW1T4UibRgcAJWHxvG6L6HvpM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s1VqP9EIERD+hagFVC72DAlEZ/VXVNsM2Fw1XLYSvTI=;
 b=OSnOeO28CX1FTvzNWs0iKkWqN/SFGWmPDbbrxzsON2oqp2+mf2y0XxxtSrzdGyRIXy
 0d9ozB1ROkR2pTO2brU24hBSGu6n1XI28JpkjgwvS6QfKLVzbBEI7RIuwRqOGqfolz9H
 u8OwSRHXx+nLROXZPyLfYfO8eGLERnTqgVvvrazz6K+kCb33f5XFNs3XVeQlddjaMLDp
 j5m6Iw5AZZB/S2oqqa2EEMXGR7DTDmjzkRmek0ApDluazKwCOUct5RNVWRmQ96bQ/7bc
 /ziODx2zCLNlQMmr1e5BhINzOhpoHdZB21XLd0c28XS3Xz2yuhvh/jllSxeWCb58plKx
 BzYQ==
X-Gm-Message-State: AOAM532NK22sOaNbt5EGK5ybj1QSkm18EhlSlDKrHBsAdx+rnACdeiaG
 lAymPHOTDUiOd1KcgzqqtkwFMqfZDdiG9w==
X-Google-Smtp-Source: ABdhPJyHy7LJRn/VtSjB/Zvs5KMCzyZvT4A08M95yw8GvYTIy2Cx+yvqQMNC3B+pEj0gQ7MYz9hMxw==
X-Received: by 2002:a17:90b:1246:: with SMTP id
 gx6mr3453815pjb.146.1592474928918; 
 Thu, 18 Jun 2020 03:08:48 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b0c7:f192:869b:df87])
 by smtp.gmail.com with ESMTPSA id o16sm2190793pgg.57.2020.06.18.03.08.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 03:08:48 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 0/4] ARM: dts: rockchip: Radxa Rock Pi N8 initial support
Date: Thu, 18 Jun 2020 15:38:28 +0530
Message-Id: <20200618100832.94202-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_030850_520835_361D5B93 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Rock Pi N8 is a Rockchip RK3288 based SBC, which has
- VMARC RK3288 SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

VMARC RK3288 SOM need to mount on top of dalang carrier 
board for making Rock PI N8 SBC.

Any inputs?
Jagan.

Jagan Teki (4):
  ARM: dts: rockchip: radxa-dalang: Update sdmmc properties
  dt-bindings: arm: rockchip: Add Rock Pi N8 binding
  ARM: dts: rockchip: Add VMARC RK3288 SOM initial support
  ARM: dts: rockchip: Add Radxa Rock Pi N8 initial support

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/rk3288-rock-pi-n8.dts       |  17 +
 arch/arm/boot/dts/rk3288-vmarc-som.dtsi       | 298 ++++++++++++++++++
 .../dts/rockchip-radxa-dalang-carrier.dtsi    |   2 -
 .../dts/rockchip/rk3399pro-vmarc-som.dtsi     |   5 +
 6 files changed, 327 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boot/dts/rk3288-rock-pi-n8.dts
 create mode 100644 arch/arm/boot/dts/rk3288-vmarc-som.dtsi

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
