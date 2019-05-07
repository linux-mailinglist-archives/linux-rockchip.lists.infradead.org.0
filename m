Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2EC816A4C
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 20:36:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ro8VeSZaa4xAfrGYoP69tR9lrmOHll+dLz4OTOYK0Iw=; b=b/SD49LN+VM8SF
	esI6HymERF4WvKB1dGKgl4LZFn8jYOS25pQNnDodZir8bQWVDIbic3Kt6yq2QziCEzR59AvJ2/fco
	z3S4aeonlYtVGqt7ptHFaKrpJFP25t9YkopjpCV/Ku0iuKkD2vMNeRFTUcLFfOkqaONk28lbdgKSJ
	CbT9Hlh5/Y5cLTJRSOGKb0p4nxYeaSuIqdSDDK4jSrSlUSA7IJs/oi1IDy9o/0NNp/HDf0c9JrtbH
	prBVEE0u5U+H2piwdcL+uWzqPYlv+KuCVzz9dLmxGroV7a7Q/ldtjKll2ufr6loLZyhQdUpGQtUVW
	QsN+xhmxht7lyRkDZJkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4xJ-0000wo-P7; Tue, 07 May 2019 18:36:45 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4xE-0000uh-Oc
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 18:36:41 +0000
Received: by mail-pl1-x642.google.com with SMTP id a59so8596596pla.5
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 11:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=c3yCPQqt6xrsJq6CNOc2AsWpN1a2azRwt0+C3z2WHv8=;
 b=Myc9dGjUlU0dAzJPBzsiaWxY2Y+lA04xuQ1kRM77RXtX8sIcc7PEMuBwSFv9ouXXlZ
 IVwiWPoGZf72jytAHYtSMb1qm87EJFvR8uNkiiITUNCu4ql1VCPw8pSydh7ci4N0jDsq
 qhsR2tI2bTfSsJKCHzfBCbBFdyF0NXryJgga0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c3yCPQqt6xrsJq6CNOc2AsWpN1a2azRwt0+C3z2WHv8=;
 b=ZjuWnVF+MvL1rzqeew3NeKs9tLQmAFGuYchjXw/KXJRtu6hJMJ2oB9yK9djMvJZ1cc
 r4EZX9VUb4Ivy5V8TRLy6SsWx/n1JuFRRXFUb82SdW1ISQjUvTar+/eY6MSqRmj6hyPl
 j1xW9cwXlRfQy4l5CUWusu7TenUUhtQFFyngAAN3MYoroHae6WerwRa0d9N251jenmuU
 O9D6fPqPJp/q74lzhNBTNNwBmDMKalx4VQeIFMA3EFoT99TaIm/7R4zH8Ip0xliL3BFM
 scbO95G32ccjGuNfzHDjXqO0xgn7S0C+vimPfy0UMNcmzV/0IAetnzcWgKbOnlJDXI2E
 8Fxw==
X-Gm-Message-State: APjAAAVmP3353l91re9cHBuEyzHRagP9+mNnQfiLD3puB4XiQoV3KKRd
 VjqB2cZ3xnHl6T7z+syoeqBrcw==
X-Google-Smtp-Source: APXvYqyKhN0aPwKeLTQcQyrY/B6XqrpX7LdkZ3zlmURsn9BkbgL2xzxAdsrFdsmkhCZ0rZ+pqMyyuw==
X-Received: by 2002:a17:902:8ecc:: with SMTP id
 x12mr42009184plo.0.1557254200181; 
 Tue, 07 May 2019 11:36:40 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id b22sm21743728pgg.88.2019.05.07.11.36.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 11:36:39 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [PATCH v7 01/11] rockchip: dts: rk3399: Sync pwm2_pin_pull_down from
 Linux 5.1-rc2
Date: Wed,  8 May 2019 00:06:17 +0530
Message-Id: <20190507183625.5983-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190507183625.5983-1-jagan@amarulasolutions.com>
References: <20190507183625.5983-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_113640_796645_D57A81FA 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

To make successful build with dts(i) files syncing from Linux 5.1-rc2
the rk3399.dtsi would require pwm2_pin_pull_down.

So, sync the pwm2_pin_pull_down node from Linux 5.1-rc2.  Since this
node is strictly not part of any commit alone, I have mentioned
Linux 5.1-rc2 tag for future reference of where would this sync
coming from.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 arch/arm/dts/rk3399.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/dts/rk3399.dtsi b/arch/arm/dts/rk3399.dtsi
index b53e41b4dc..b73442ee34 100644
--- a/arch/arm/dts/rk3399.dtsi
+++ b/arch/arm/dts/rk3399.dtsi
@@ -2495,6 +2495,11 @@
 				rockchip,pins =
 					<1 RK_PC3 RK_FUNC_1 &pcfg_pull_none>;
 			};
+
+			pwm2_pin_pull_down: pwm2-pin-pull-down {
+				rockchip,pins =
+					<1 RK_PC3 RK_FUNC_1 &pcfg_pull_down>;
+			};
 		};
 
 		pwm3a {
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
