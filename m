Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC1D146E6D
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Jan 2020 17:29:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4MYPWHz+6O2FO7QSulJ1gqYXqlSQwm09yH/o8iLSZY0=; b=WxFl0frYxqmO1W
	+rshRFqcW5hhDiwOfDSPB5Ul9dEVWnI3dqx3h1Jz8RID4bctViMegxGoev2++7TxIDTS+xYvHyK8m
	/flFswajCeeeaA0dmjnHyLMScVfPUbXOMf+7iS0bn+h3Rz15oeXHaWsAvszonFrPhqNKpBvrM5JoC
	SZEkdfmkXzdJltwgcqw4L/A7zn7NyCOUxEPC8HqGGsUn6M+LOzvdF7TIjrlMUrydRMvegxy9MgPS9
	5gK1UbJO3qYQpn843ovJZEKGYFYcooIXRDkU8kMJV5ZkaPtunfQZxDNp1QDcUkuixgs9EWEh6i+kl
	Ch2zV2/w5Ko+h6jcEhow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iufM3-0007Ta-Hn; Thu, 23 Jan 2020 16:29:15 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iufLz-0007SY-6W
 for linux-rockchip@lists.infradead.org; Thu, 23 Jan 2020 16:29:12 +0000
Received: by mail-pl1-x642.google.com with SMTP id g6so1566364plt.2
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2020 08:29:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vhHUnHWGG0zAYDN7WyAzf9U3XOuo80983awhOyivxVc=;
 b=r1BF7zD8YfDTOzJhAHSDh+7mLiKsWMUx5nQv1MrhzOysTgIQselju7mrvRKgXMmzWH
 fLxAx0Z/aAJkmxiIBne0aENghuATbA06FbJppctRo3UOJ3fRMS3d3Yv8sCJyfqowp6hR
 05Zgm+lax0/MYd7iIe+Wxv5Cg7sw+St0eZuAw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vhHUnHWGG0zAYDN7WyAzf9U3XOuo80983awhOyivxVc=;
 b=VicpHZgYwec2NtjUF/LOklyPz0WUdUv2CAdwxDi/R4j0Pars1ID0KNdEQvKUdM8bOk
 ozZkD6zL1ynmChZ/1HXWjXX34NQI8xBnMS/XmA8l8hAqZaYynLhEagQ5iOras+aNRjNW
 BmGeFZ0w/JkxSyusw3weJDNDfl9GWDkLpTz+HDPHIK5b81hnRnvHEnkAjMInUsTFp+G/
 6ZRyulYVNDa+t4msxC+nlMz+BDstO/h02kWncTjmT9xqhvgDxF6MNEAq1V6ZeZOcQwZ/
 +cWmlGaBfBRGVzCax/iIKU4Rn7Ke8ctL+UaTeza2O4UIWygD+d7d2l4Q1UL7LQ9XwEgg
 8FZg==
X-Gm-Message-State: APjAAAW8QraUoyXkF8F2LSzO5EcpkDHjjVGKXEUrYZeBVI1nRqmEEfVo
 V5AbtSlTes75e+xhFS8bxr9QkMKT61g=
X-Google-Smtp-Source: APXvYqwGmMMx76BkmhnOb4kxEw46ZXPcLxs8GN75gRLqFcGGPMe41uwsrBuSx/tOjwocteF57U/34A==
X-Received: by 2002:a17:90a:b10a:: with SMTP id
 z10mr5508004pjq.115.1579796950584; 
 Thu, 23 Jan 2020 08:29:10 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.109])
 by smtp.gmail.com with ESMTPSA id u1sm3188909pfn.133.2020.01.23.08.29.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 08:29:09 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 0/4] rockchip: rk3399: Fix HDMI out
Date: Thu, 23 Jan 2020 21:58:41 +0530
Message-Id: <20200123162845.10651-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_082911_724146_134AAC2E 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: u-boot@lists.denx.de, Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Due to recent Linux dts(i) sync for rk3399. the existing
vop driver is not working with HDMI out on RK3399.

These patches fixing the same and enabled HDMI out new boards.

Any inputs?
Jagan.

Jagan Teki (4):
  arm64: dts: rk3399-u-boot: Delete vop assigned-clocks/rates
  video: rockchip: Fix vop modes for rk3399
  rockchip: Enable pre console for rk3399
  rockchip: Enable HDMI output on rk3399 board w/ HDMI

 arch/arm/dts/rk3399-u-boot.dtsi                 |  4 ++++
 arch/arm/include/asm/arch-rockchip/vop_rk3288.h | 11 +++++++++++
 arch/arm/mach-rockchip/Kconfig                  |  1 +
 common/Kconfig                                  |  1 +
 configs/nanopc-t4-rk3399_defconfig              |  6 ++++++
 configs/nanopi-m4-rk3399_defconfig              |  6 ++++++
 configs/nanopi-neo4-rk3399_defconfig            |  6 ++++++
 configs/roc-pc-rk3399_defconfig                 |  6 ++++++
 drivers/video/rockchip/rk3399_vop.c             |  2 --
 drivers/video/rockchip/rk_vop.c                 |  4 ++++
 include/configs/evb_rk3399.h                    |  5 +++++
 11 files changed, 50 insertions(+), 2 deletions(-)

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
