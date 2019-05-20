Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE41C23F9B
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 May 2019 19:56:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vm7j9dlgxVqj3Xco7nmT4kCMr3WrsIN97TL+P7DLTdE=; b=FEc09JPyhY4Kwi
	94AOjn970y75xjH8zxkAN6rEowzKrrWiVGi6LucEKxUGua4fOVTHQKErnNZm+c1CydZcxBGJTOV88
	bpcYJPU6Ywt7q+aRZaQ1O3JwUorq2HuzcxJU3SEymT486idASOG+UwLCPJQd7BUphuVmN//l8wcoJ
	Hz1gRxRONXn9jjly0HOJbZz5F3xzqYe0PIPqtRR3JWul38xnBWVIId5/DFHvXxOcu4dMOpuzRCS2i
	FMkFYO9cNTN+vMvn9bdXG6Fpcg6oNyud2cJ0ISiNgbmcImSgi4GnxHrC0c8AlH3kHC5vo1wDHuyh0
	M0W68PHUazu3P2YlFVMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmWd-0008Hg-7r; Mon, 20 May 2019 17:56:39 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmWE-0007lV-Cu
 for linux-rockchip@lists.infradead.org; Mon, 20 May 2019 17:56:19 +0000
Received: by mail-pf1-x441.google.com with SMTP id v80so7594618pfa.3
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 10:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4CUjhStx9Q1czDRNZdSf4vceu5KbZk+h2BQP0hsuERo=;
 b=MFNW8y7mNTo6N1VqA5T5Mo6RzW9jVYQYoQ6qYJl5we7NYdFnZFDyx0sLkY0ogXYLwn
 enWsfvygO1Z23KozLJnz0N3qWtFlricRqhBNrAnq4nJz3++GH7QK0Drjjj2wHUSWnds0
 fpeGcp4z76OpMh6bXOsowHGITGPi2pbzJqyJo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4CUjhStx9Q1czDRNZdSf4vceu5KbZk+h2BQP0hsuERo=;
 b=HgPLsqrYVxXbHaIs21TxbTk1fIrbvwoPi04l6c5xyGJzyS5byzqQDlMFxfaJiVnlgf
 7mDI8gLTg10BkEPHz/ANvuq+w3bJx0B+AEPmg7hcUnZb2TvO7ya5jT0+zFGj3ztWo0im
 akzwud1qSClmSUtTjDfH7XgsR8FQ0+RYMgvnD9rcVSc0Y2OEvOmuoTHsj6ZEvhu9LUoI
 4HJsZt5TOphxlPpbiYpFq/lHpSZFjptntcjnmskA7dVSti2vOWpaqZsNeoyY0KFzrFhf
 7CBTghfyWYGkvJLvIyxErbhNBXiiGFg5fanjyWGXqaJFXv/05mwupW1+lCiUPDf18zh/
 G2EQ==
X-Gm-Message-State: APjAAAU+uf27qCLSj9QucUz6/qM4KxdEiAGBwWaViVh0238hZrCtuRc/
 Ykuzx3ggavfWzvRbO+0SuyyGDQ==
X-Google-Smtp-Source: APXvYqx8PLoZmRIV8cyPnbkbGG132pIi5rrVAVnCDXIAjwYFv8VXCCCG4c1elHrOmzAQBdfYcMChEw==
X-Received: by 2002:a62:6341:: with SMTP id x62mr80813484pfb.63.1558374973618; 
 Mon, 20 May 2019 10:56:13 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id o2sm16852723pgq.1.2019.05.20.10.56.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 10:56:12 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Minas Harutyunyan <hminas@synopsys.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>, heiko@sntech.de
Subject: [PATCH v3 1/3] Documentation: dt-bindings: Add snps,
 need-phy-for-wake for dwc2 USB
Date: Mon, 20 May 2019 10:56:03 -0700
Message-Id: <20190520175605.2405-2-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190520175605.2405-1-dianders@chromium.org>
References: <20190520175605.2405-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_105614_877201_F06A90A9 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
 Mark Rutland <mark.rutland@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Some SoCs with a dwc2 USB controller may need to keep the PHY on to
support remote wakeup.  Allow specifying this as a device tree
property.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
For relevant prior discussion on this patch, see:

https://lkml.kernel.org/r/1435017144-2971-3-git-send-email-dianders@chromium.org

I didn't make any changes from the prior version since I never found
out what Rob thought of my previous arguments.  If folks want a
change, perhaps they could choose from these options:

1. Assume that all dwc2 hosts would like to keep their PHY on for
   suspend if there's a USB wakeup enabled, thus we totally drop this
   binding.  This doesn't seem super great to me since I'd bet that
   many devices that use dwc2 weren't designed for USB wakeup (they
   may not keep enough clocks or rails on) so we might be wasting
   power for nothing.
2. Rename this property to "snps,wakeup-from-suspend-with-phy" to make
   it more obvious that this property is intended both to document
   that wakeup from suspend is possible and that we need the PHY for
   said wakeup.
3. Rename this property to "snps,can-wakeup-from-suspend" and assume
   it's implicit that if we can wakeup from suspend that we need to
   keep the PHY on.  If/when someone shows that a device exists using
   dwc2 where we can wakeup from suspend without the PHY they can add
   a new property.

NOTE FOR REPOST:
- In v2 Rob said [1] he'd prefer something based on the SoC
  compatibility string, but that doesn't work because not all boards
  will have the regulator setup / board design / suspend logic
  necessary to make this work.

[1] https://lkml.kernel.org/r/20190430012328.GA25660@bogus


Changes in v3: None
Changes in v2: None

 Documentation/devicetree/bindings/usb/dwc2.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/dwc2.txt b/Documentation/devicetree/bindings/usb/dwc2.txt
index 49eac0dc86b0..aafff3a6904d 100644
--- a/Documentation/devicetree/bindings/usb/dwc2.txt
+++ b/Documentation/devicetree/bindings/usb/dwc2.txt
@@ -42,6 +42,8 @@ Refer to phy/phy-bindings.txt for generic phy consumer properties
 - g-rx-fifo-size: size of rx fifo size in gadget mode.
 - g-np-tx-fifo-size: size of non-periodic tx fifo size in gadget mode.
 - g-tx-fifo-size: size of periodic tx fifo per endpoint (except ep0) in gadget mode.
+- snps,need-phy-for-wake: If present indicates that the phy needs to be left
+                          on for remote wakeup during suspend.
 - snps,reset-phy-on-wake: If present indicates that we need to reset the PHY when
                           we detect a wakeup.  This is due to a hardware errata.
 
@@ -58,4 +60,5 @@ Example:
 		clock-names = "otg";
 		phys = <&usbphy>;
 		phy-names = "usb2-phy";
+		snps,need-phy-for-wake;
         };
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
