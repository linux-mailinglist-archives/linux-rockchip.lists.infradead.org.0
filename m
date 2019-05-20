Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF3723F97
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 May 2019 19:56:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/Tgn/LWGiBjZKzBwLgJxYwwqRhKqQ1QUEaaNK/tN5lw=; b=e+DaW5HXK5ufKI
	0wD5/6RkjCmeQewTcuP8pRz9896JkHGSKOcE48bdJVhKBYRlB880oQ1P6wu2K29OevCQ1c7M0pXoE
	qq9lWrr0sePG7n3CNNFsJan7h5sD6hBpHmtC+FYzjiTdZDbzFPqGvXaRxPnLbaY6Tk8/IoB4U1Bdq
	V8+Vj7TaAfj4zSbx/WMJzqYMwPA7xQd4YKlbnrdSatz2RCWRBbe7Vk+s5dkZO378yUuHK6rXNiun/
	J6yvgzDWlfupOY82xXNqIcUIHsuC8W7jpDOrUTGHcUsJlH1fFZ6vrH5KLVZadjOSPMANnKkVVwR08
	YaGUiiiq5c12Wg2QuRSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmWO-0007xV-0H; Mon, 20 May 2019 17:56:24 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmWC-0007kD-QS
 for linux-rockchip@lists.infradead.org; Mon, 20 May 2019 17:56:14 +0000
Received: by mail-pf1-x443.google.com with SMTP id y11so7570329pfm.13
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 10:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=52yco9VK5RzDzN0Ze4QU/l0MYwJs+5CquMz8VBL6VQk=;
 b=V4AXEIv08AJKozp2k60l6WH+FbxePpO4LTwIjjxSxtuTTGQq9J6Z94lUGUst3qQJQ0
 gzqVaxKuD9EsnXxGRIJAA19oBZ5ie2qAalS6DvszK5vEF1nkOTgi0UW+OK0Eg3doRcqb
 waYM/YGAhtSg0UmYZ5Z0OQJoZBrMBmKMhqCY0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=52yco9VK5RzDzN0Ze4QU/l0MYwJs+5CquMz8VBL6VQk=;
 b=pvveUmFnQfqBrFxnO0/uDDkAZNOokLdA47B3WXB3Ng1qdmkQ/Nw4NGc36bKtRDV/sd
 5A8BnheMaXoAkmivjwswRKDSWsdpvTVxrV+16L5PktgSkUMKBJ/gHWK+r5VG1e/TBPR2
 re+PpYvIm28JynWp1a8tcIpLlom1JmJiUlChSN6HN0Sbj1MOfAkUCyvFj6i6o9/XushM
 nefPceaAo4wolpoesBYYdmSoWdrXXlbpSYXEXfxjzywtKiKFOygnJumkoEfQuEpwVA0Q
 a++uAYe/MJgj5sz2IrLOboqMy1cG6QvhCQqa2OAHamXRxKCsDXBB3KrNr1K8ik5JHGon
 4N4Q==
X-Gm-Message-State: APjAAAUy5rZFgmVFHAde0wopXpPCaYIqUEMNp1xR82NY6ywydkzaAJry
 pkrmyhXg/EdB5jPtdRdXVOxP3Q==
X-Google-Smtp-Source: APXvYqzZDvPhaLQndJXX3Bt+sreJ+zs8jKeG3JkAK89Y9xuYz8Uqg1m2gbKwuR3Bid5ZcOye6FcIpw==
X-Received: by 2002:a62:b40a:: with SMTP id h10mr74507778pfn.216.1558374971504; 
 Mon, 20 May 2019 10:56:11 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id o2sm16852723pgq.1.2019.05.20.10.56.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 10:56:10 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Minas Harutyunyan <hminas@synopsys.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>, heiko@sntech.de
Subject: [PATCH v3 0/3] USB: dwc2: Allow wakeup from suspend;
 enable for rk3288-veyron
Date: Mon, 20 May 2019 10:56:02 -0700
Message-Id: <20190520175605.2405-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_105612_879819_3EC8756F 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Artur Petrosyan <Arthur.Petrosyan@synopsys.com>,
 Amelie Delaunay <amelie.delaunay@st.com>, Randy Li <ayaka@soulik.info>,
 amstan@chromium.org, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, zyw@rock-chips.com,
 linux-usb@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Alan Stern <stern@rowland.harvard.edu>,
 Elaine Zhang <zhangqing@rock-chips.com>, jwerner@chromium.org,
 William Wu <william.wu@rock-chips.com>, ryandcase@chromium.org,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
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

Patch #2 has a slight difference in v3 here to fix build robot
reported error.

Changes in v3:
- Fixed kbuild test robot error.

Changes in v2:
- Rebased to mainline atop rk3288 remote wake quirk series.
- rk3288-veyron dts patch new for v2.

Douglas Anderson (3):
  Documentation: dt-bindings: Add snps,need-phy-for-wake for dwc2 USB
  USB: dwc2: Don't turn off the usbphy in suspend if wakeup is enabled
  ARM: dts: rockchip: Allow wakeup from rk3288-veyron's dwc2 USB ports

 .../devicetree/bindings/usb/dwc2.txt          |  3 +++
 arch/arm/boot/dts/rk3288-veyron.dtsi          |  2 ++
 drivers/usb/dwc2/core.h                       |  8 +++++++
 drivers/usb/dwc2/hcd.c                        | 19 +++++++++++++++
 drivers/usb/dwc2/platform.c                   | 23 ++++++++++++++++---
 5 files changed, 52 insertions(+), 3 deletions(-)

-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
