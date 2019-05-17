Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DFC212BB
	for <lists+linux-rockchip@lfdr.de>; Fri, 17 May 2019 06:06:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jOq9Pmub/Tv8t5PH75hvYzSiyMDIc5yKV1bR8TnnZS0=; b=XRp
	94eG+9M+bau6pUJTMMBxL7SZT8rkDMQfelyzbL33DOV6H0ntsE8XsP1xZGZCwLoxjvC56fD8Zk5Z5
	qxCG2T+R2rbQHsSVpus1XbBZcDAGsjTgo9r2KfjReglwxWWBYPc2n2Abtq6DTYXYj9OvSSwR4G+sR
	Cctn3BBU+e2uOJBjGKpxdCpjYcQF8tm4pn4q1w47PKglBTGqAsnyZ/obuTv5ezz0FN237X7Ng0fiR
	e7UeuaXsTxnyE4VGkeVQ0XEUYnBTXtYAU/S8/VIJdApdrBm9tWPx/rCL1sc4mgNnjLMJY73EUww7u
	X5CyZU6a35f8fo/7c/69SW4JgWi3QrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRU8u-0005Sw-R1; Fri, 17 May 2019 04:06:48 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRU8m-0005LA-PG
 for linux-rockchip@lists.infradead.org; Fri, 17 May 2019 04:06:42 +0000
Received: by mail-pf1-x444.google.com with SMTP id q17so2976758pfq.8
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 21:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=YUNM61SbavGzuv3ZLziasFZlDP0wZTIm2rUlcIBaEc4=;
 b=yIDpDUlKX448aC7IJW7/WLegcIQtNfcka6iCLmWv+QC8U8/MdB2bGFG1VyVS4kpSpw
 /BO6E+als7fmAJI30vpohsn/1kZAGU+w8hBEM8/jPi5X6BWJckMO70rGA3WR0/ysroC7
 +Bqe/diruvyW7cYtdcSbqqvjegR3HmFUmeZFKadkyKGTUoOV/xU7JeqKRPkOLKtLavDV
 5aZumrHxYHdRzO67Oxw1vY9zTqo6oT3XnyuBePyIawE6U4y0cIBf9hJGqEM3AM+Byhcw
 k5ZiNGp9FBVlgawHroO+EHAMFT6unmCgJUCQM0P2TTZUsJvBcsVZ2N/auobicxfEMTaV
 GvXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=YUNM61SbavGzuv3ZLziasFZlDP0wZTIm2rUlcIBaEc4=;
 b=VSatlq8p99w94M62/WuOBvwa7W9AWzR+ubAMWM2b7dhYk5JatplGscwOYZN+jVKwe9
 8drHJGfDdbYJELcWF/sjldzlBaU4Kk9LLrcPdI6Vp1aRb0sQPcHUSWxcuPq/+nP/Rfyz
 JlVf/gryYSnWnMJkHZb/GgWOBADO1AeREAW5lXUD2Elynd7dJqzzi4rVGKifIaEdcDpd
 xdRSwQf8bDbqoTUteF9Toa5hfsqnKVFAvIYf50rxO7X42MQbUmKh6ZPK82dTXEEIs/AC
 t9uVkhA0CleN2nuKxpFSHC2RDdZU+z/BsZhcRnZC+DW2/BshZ+hGUNDmxF5JGKexMuGV
 SY7g==
X-Gm-Message-State: APjAAAXKaQAFGkVq1sofk4yGcE0NxKUSWjFGCAGJ6qptebp7w270pJtt
 NOR5tWETRC1qBMok4bjKs90S
X-Google-Smtp-Source: APXvYqz7kfN3pi13qegdwYdYgGYpAj2q8K5JcWDOsEo7Y6jybA2FcawPknW8Ht4RsODvS+LMWZrI0Q==
X-Received: by 2002:a62:bd0e:: with SMTP id a14mr38891835pff.44.1558065999551; 
 Thu, 16 May 2019 21:06:39 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:6390:5018:b478:7b0e:49e:16a3])
 by smtp.gmail.com with ESMTPSA id d3sm8628927pfn.113.2019.05.16.21.06.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 21:06:39 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: heiko@sntech.de
Subject: [PATCH v2 1/2] arm64: dts: rockchip: Enable SPI0 and SPI4 on Rock960
Date: Fri, 17 May 2019 09:36:24 +0530
Message-Id: <20190517040625.14607-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_210640_982692_A88A55C9 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: tom@vamrs.com, linux-kernel@vger.kernel.org, dev@vamrs.com,
 linux-rockchip@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable SPI0 and SPI4 exposed on the Low and High speed expansion
connectors of Rock960.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---

Changes in v2:

* Dropped the label property since it is not part of SPI binding

 arch/arm64/boot/dts/rockchip/rk3399-rock960.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
index 12285c51cceb..c624b4e73129 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
@@ -114,6 +114,16 @@
 	};
 };
 
+&spi0 {
+	/* On Low speed expansion (LS-SPI0) */
+	status = "okay";
+};
+
+&spi4 {
+	/* On High speed expansion (HS-SPI1) */
+	status = "okay";
+};
+
 &usbdrd_dwc3_0 {
 	dr_mode = "otg";
 };
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
