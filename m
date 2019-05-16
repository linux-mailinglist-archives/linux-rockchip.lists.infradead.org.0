Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA08210CD
	for <lists+linux-rockchip@lfdr.de>; Fri, 17 May 2019 01:00:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k87B0rnHRl9rJw3B2Y7NURQLVVb6GacGP/1rw9nbQsY=; b=rF+29UUwvU+8Gy
	1cUgvrehwLASHutU/PKhxHBMTV05A/P47Z2dcna/os2rMg8scu8eE+ECyL3QHPkCQgOXiN6ZiXZQ5
	lJ68TH+OIwbNj1p3kkvGWtevuftuPp0LGGbBt9xZe+gN6AiTQYaL9Bl7V34onEt05bbayNOpkV+DC
	aAiAvAEEFA5u3jZqkJWv2z2KBPuP0nx3fsx/LzBPTYirUuIm7oAnqsRU6ALw2s90or3zEVfmD5uI3
	Ssh+LgHYOQ0h+7o0esOFFYHfx/KC+d6MhyCgBtLW2b+c1yj/y3l+AR6RM+ZUqtVoT5cwsrmbqGSek
	7LA3UILb1WlRkv1ZMPCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRPME-0003W4-W8; Thu, 16 May 2019 23:00:15 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRPM0-00025H-3S
 for linux-rockchip@lists.infradead.org; Thu, 16 May 2019 23:00:01 +0000
Received: by mail-pg1-x541.google.com with SMTP id 145so2265195pgg.9
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 16:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5SPI5RDPWdm7X3U8G9i9l916Umv8GEODUn9UXyetpFQ=;
 b=XqaResjbamVa27eUZH0ReqyOeLnzGjESnU4sd5uP71Q5DjrC6Inen21If1TxNy1eAS
 EUwh3Zd7mrs5/Cu5uCL878Xot+50PiUbvP8uAHxvZaDMO4L6wLl6b5Zn5TbkU/15oyDX
 Ki3YSd8i7BuCoLoxD8NnkrNgGtzAexmc0Ni1I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5SPI5RDPWdm7X3U8G9i9l916Umv8GEODUn9UXyetpFQ=;
 b=cBR8DZyVys8Jj3hB/wrVFXz1+oZnP0euxXei5myWBK158J2CSvoI+LuGrgysDEGsib
 GyEqF4l9c421k2jt+AiFKm/7W49gJu14PvBEVkPrYlZIHhIFE5O2WysmKzqMyFsozUx8
 vMns/HzD2RZC7/FfUvzL1kkjs2W+42bDcszi/N9Kg7PVAlSwQxFhmfcGKkVTXlAbBNXY
 SEdgOBBsLvAClOdg2lhfFOXyx5Vl8dVV89jPXJSlO7PBCW27J835ewyhjUjgJKp8As72
 jLWkSeiX+AngurSTt5oO4pSZSKwqOAlLw7wfUZVwxBY8/wKZ7GJpuLhWAPzQ1qvhGkFz
 yU3g==
X-Gm-Message-State: APjAAAXzEzHoqhunjLqqz5i08WJPttJK+FoKrNnT+A2gQaqOpuXPFNte
 OfcKa2CYrQo4YghQIIQf5XCBYQ==
X-Google-Smtp-Source: APXvYqyBwuyMUc16C5THCTCHLcAVBc5sfzm5Lo0F2Kp/4BxCcSub39P/7nmc9SsQxcSYnZOu+IhC3g==
X-Received: by 2002:a63:6a4a:: with SMTP id f71mr52245653pgc.44.1558047599563; 
 Thu, 16 May 2019 15:59:59 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id j64sm1769506pfb.126.2019.05.16.15.59.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 15:59:59 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Minas Harutyunyan <hminas@synopsys.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>, heiko@sntech.de
Subject: [REPOST PATCH v2 0/3] USB: dwc2: Allow wakeup from suspend;
 enable for rk3288-veyron
Date: Thu, 16 May 2019 15:59:38 -0700
Message-Id: <20190516225941.170355-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_160000_168588_8CB82245 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Amelie Delaunay <amelie.delaunay@st.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, zyw@rock-chips.com,
 Stefan Wahren <stefan.wahren@i2se.com>, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Alan Stern <stern@rowland.harvard.edu>,
 Artur Petrosyan <Arthur.Petrosyan@synopsys.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, amstan@chromium.org,
 Randy Li <ayaka@soulik.info>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, ryandcase@chromium.org,
 William Wu <william.wu@rock-chips.com>, jwerner@chromium.org,
 dinguyen@opensource.altera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is a re-post of the last 3 patches of a series I posted earlier
at:
  https://lkml.kernel.org/r/20190418001356.124334-1-dianders@chromium.org

The first two patches were applied but the last three weren't because
they didn't apply at the time.  They apply fine now so are ready to
land.

Changes in v2:
- Rebased to mainline atop rk3288 remote wake quirk series.
- rk3288-veyron dts patch new for v2.

Douglas Anderson (3):
  Documentation: dt-bindings: Add snps,need-phy-for-wake for dwc2 USB
  USB: dwc2: Don't turn off the usbphy in suspend if wakeup is enabled
  ARM: dts: rockchip: Allow wakeup from rk3288-veyron's dwc2 USB ports

 .../devicetree/bindings/usb/dwc2.txt          |  3 ++
 arch/arm/boot/dts/rk3288-veyron.dtsi          |  2 +
 drivers/usb/dwc2/core.h                       |  5 +++
 drivers/usb/dwc2/platform.c                   | 43 ++++++++++++++++++-
 4 files changed, 51 insertions(+), 2 deletions(-)

-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
