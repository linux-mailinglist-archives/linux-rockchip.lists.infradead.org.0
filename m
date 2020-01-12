Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94965138731
	for <lists+linux-rockchip@lfdr.de>; Sun, 12 Jan 2020 18:16:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2QTrSRU84cAVuFE3Vn57JqqxeDGy1N/CMDBmtqUpF5s=; b=n8++4yRyGLjI9q
	B+MI61Pqxe0FIImLw+Tn7LrPh0nWAnnqLY/MaDQNYomEgfrRo1WO+ah10ftufaBQyukqhk2iX1NRH
	1dBHQD3ShG//cmPhsvBcuNvWS1uKJUqmxSMNilXRFvzRr06C3/zFqbkrAhuvj9XqKr/0Oreedpox+
	6znTQNCmh50Z6QV3+jopxk0gCPnHT1Wqxj9ms15622ekazuNni/79+PqyFW2OZ6Cpp/ALB6q8nHT3
	3osty4sTE9raK8q0Qn4tDqbV/KPg+N2yxMk+UczQgbm7NsQ9rdsKduT/Clt5M3mIMx/yD9rRz4B+H
	mp/Ma14MSsRO/pAYtKvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqgr3-0005rY-6P; Sun, 12 Jan 2020 17:16:49 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqgr0-0005r3-9U
 for linux-rockchip@lists.infradead.org; Sun, 12 Jan 2020 17:16:47 +0000
Received: by mail-wr1-x441.google.com with SMTP id c14so6309087wrn.7
 for <linux-rockchip@lists.infradead.org>; Sun, 12 Jan 2020 09:16:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=mK3n8YHUQSO4qWCfmig2OoPvmN4FELyuj1mu8Qb0Uvg=;
 b=PHCtFhmFmXpRaReOuByijRkKAlqojM2ncg25uli2v2Hj9plkD/j++7TTjVnZJZmOXG
 EpDtrceDGxxDanl8OienaHcqepb7jqkI/bGSvC7BJrJAsDMoLq+Dd1I3S5zoGymc8ZpS
 OotlGfZ8HlgyIlcuDntQBj/z4G31ryYwc/tes=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=mK3n8YHUQSO4qWCfmig2OoPvmN4FELyuj1mu8Qb0Uvg=;
 b=jO5WC+ohLKYmn3r5L3l3z5z4YXvKBzou64ZiEQlaN5jf8EWxjbOrhzxH08HgSQO87h
 2qSJIhC4io6jY46h1U+FKwPazVAjAmLfA15uDbNc0d0FJJQcVQ/ZHYXyL7uui3xiA3WL
 0T4zT6QLZXqy5uC/y5w8eZguDqupKjP2N45rBVLzwYbhekE8JUq07l2sPOce3dfsD/T7
 FyP6scBC4q3nim8SGLbS9vwQueGv1jds5qcl+8g6gTojzTxOdcD6imecBFPESTmEaUV+
 TsuFfmf8EWQ0VPtFWEJrqrdGLj4XGXU2mrNQAOdQYM2ThY5z2oB/I3ajiOTj5CzsQlCy
 7nlQ==
X-Gm-Message-State: APjAAAWHzWvJL6CBP1SLENzSBJ6Cs4TR2qg+OdIf5OSGBXU3Jkhrl9C7
 DWJu/iXSimqPwcy+f6VLZxVyGbVk4ft8gEEi8P+vvw==
X-Google-Smtp-Source: APXvYqygPwAMTqGMIy3dEtPb4hYX1AZgBOcWui/v0mFURI1IVBW/bpkZ8SrUaPG+eKFCMYhuSAZjy2ibjXgta8F+4Q0=
X-Received: by 2002:adf:f501:: with SMTP id q1mr14855561wro.263.1578849403383; 
 Sun, 12 Jan 2020 09:16:43 -0800 (PST)
MIME-Version: 1.0
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Sun, 12 Jan 2020 18:16:30 +0100
Message-ID: <CAOf5uwmPMRq4v9=5-Z=XLH7hATC-AhXQWthfy_uvYTXSo6V+CA@mail.gmail.com>
Subject: siimple-framebuffer rockchip persistent logo
To: Kever Yang <kever.yang@rock-chips.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_091646_473199_37BD907A 
X-CRM114-Status: UNSURE (   5.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 LKML <linux-kernel@vger.kernel.org>, Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Kever

Trying to have a persistent banner from uboot to linux-kernel. I'm
right now working on linux-rockchip kernel but I think that the
problem is even on mainline

+               framebuffer: framebuffer@7f800000 {
+                       compatible = "rockchip,simple-framebuffer",
+                                    "simple-framebuffer";
+                       reg = <0x7f800000 (1920 * 1080 * 4)>;
+                       width = <1920>;
+                       height = <1080>;
+                       stride = <(1920 * 4)>;
+                       format = "a8b8g8r8";
+                       clocks = <&cru  PCLK_HDMI_CTRL>, <&cru SCLK_HDMI_HDCP>,
+                                <&cru SRST_LCDC0_AXI>, <&cru
SRST_LCDC0_AHB>, <&cru SRST_LCDC0_DCLK>,
+                                <&cru ACLK_VOP0>, <&cru HCLK_VOP0>;
+                       status = "okay";
+               };

Seems that it get off before I reach the drm registration

[    2.077495] simple-framebuffer 7f800000.framebuffer: framebuffer at
0x7f800000, 0x7e9000 bytes, mapped to 0xf0900000
[    2.077519] simple-framebuffer 7f800000.framebuffer:
format=a8b8g8r8, mode=1920x1080x32, linelength=7680
[    2.161225] simple-framebuffer 7f800000.framebuffer: fb0: simplefb
registered!
[    3.433847] fb: switching to rockchip-drm-fb from simple

I don't find all the clocks and if those are the only think that I
need to stay on. Any suggestion?

Michael

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
