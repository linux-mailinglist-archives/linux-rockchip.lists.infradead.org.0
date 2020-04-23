Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E4D1B5E99
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Apr 2020 17:05:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VeJ9su48xJxhPNbYbjnlenzZX1C+lxJDE9yzpnT8r8A=; b=tEEFkekFbt5p33
	zqI1TXKZuvw3UvYWUNeQH8Sqjr6dCmvaGAwephka/eVerbgp8/nOSToT6R7+hTi7OisrJ1X88j24E
	gL+88lOj5/TWjDPD8nc7SzAvFupWaItDqal0NctEMMjX0BRFT5uQxVqrD338c1CMKjzneEN164Gsw
	xWFukW0jg/kFInELI07PuB89GaJeUIY2gZ1dKHFZTBIo9CR5es6JtXBHtTSAdcx0I3e2BsJPl50fN
	5+E0wd1Vgmt0FUEP/rKESLWiD+5z+TXUbRH3Tv1zHAf19p1cjvLNabSy//c9u78dTrti39En5sQ/Q
	jHEx1RkEUMFR/GqjIZTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRdQ9-0002E4-CT; Thu, 23 Apr 2020 15:05:45 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRdQ6-0002CF-3H
 for linux-rockchip@lists.infradead.org; Thu, 23 Apr 2020 15:05:43 +0000
Received: by mail-qt1-x842.google.com with SMTP id i68so5091910qtb.5
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Apr 2020 08:05:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wacqHW3gccmDNURCgjlzvVgG21qNlFCj1/O4TOTssA0=;
 b=hcDXxb7mnhzRYWUCDDAmLzi9GoUjgYoNgqaEk4TqkurVhy69y/ma8CuVssbNZbYigp
 q+Vk3EE+q1JwizU0qURzyKRp24G+WAJfFeDnbsw2Qga07BxUxqICbP62T6KiyJK0tyju
 NaMlhp2eDHeO9jnwtATVxFJnl5f/DyBtn9JKTnRsxO0ys8tzFkb+/8VKNpEL4f/rVjW1
 7xSf0SA8Rva+XNCJi2TLEUaPp97HNKr1WfI0kMoEiNAkX0ceHurrfppCvy/gIU926g0r
 GrJnQAI5T5IR2I0kWqyPGdII0LzzieelRjA93EKS1kSOwZF0cGhE3G5RJrCnOZsHfi+B
 rd0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wacqHW3gccmDNURCgjlzvVgG21qNlFCj1/O4TOTssA0=;
 b=d+jfI3yshVs4iqC4s85FfJBrXtLTGX4tLAXhBVwp0/BeikF/84hF9Ei58fsWfBTSyz
 N3woVjTx1VP6lRWvY5lIq1uxKMX7TMRFS8++dcuAmu2m3atLdXVa+USucwtiaf0XwyfL
 lacPjzoNfu/bURAorerqw/qZKIxnCbvRdrEDSUi31T9q370Nj4099W0QeWioJmhJ/ERq
 hbPDMe3sZq1OtT8n0ugKHLDmM9wzDjGeemr34arw+izBCaiOy78Vmw8wt63ecUa+kicw
 FxanRgSQ5fFv0HVFkHuegc3rV7Nn0wjWSmgH09qAJMawuOXehZ8j5v5X5mDlRQdPVSSM
 auEA==
X-Gm-Message-State: AGi0PubkMYg0YVb4wj6cbbRXjcBrK88BD7MRxAMsZleoSzT7AxInuNA+
 NgZt5Tvw486l7hgHwrSYHbQ=
X-Google-Smtp-Source: APiQypK5lLma3tb8p4+cxfygakfvgNBPOKNsGobH9EmlK0lf1GmXWoa0U5Ej0ezx+JLY17ZmJt9GtA==
X-Received: by 2002:aed:3e22:: with SMTP id l31mr4476722qtf.290.1587654338902; 
 Thu, 23 Apr 2020 08:05:38 -0700 (PDT)
Received: from rockpro64.sparksnet ([2601:153:900:206::20])
 by smtp.gmail.com with ESMTPSA id b42sm1923188qta.29.2020.04.23.08.05.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 08:05:38 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH] arm64: dts: rockchip: fix rk3399 pcie speed
Date: Thu, 23 Apr 2020 15:05:10 +0000
Message-Id: <20200423150510.6216-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_080542_139402_58BD500E 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pgwipeout[at]gmail.com]
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
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The rk3399 is capable of operating at PCIe gen 2 as per the TRM.
The device-tree incorrectly limits us to gen 1.

Correctly set the maximum link speed to <2>.

Tested on the rockpro64.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 74f2c3d49095..e9efd330810b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -248,7 +248,7 @@
 				<0 0 0 3 &pcie0_intc 2>,
 				<0 0 0 4 &pcie0_intc 3>;
 		linux,pci-domain = <0>;
-		max-link-speed = <1>;
+		max-link-speed = <2>;
 		msi-map = <0x0 &its 0x0 0x1000>;
 		phys = <&pcie_phy 0>, <&pcie_phy 1>,
 		       <&pcie_phy 2>, <&pcie_phy 3>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
