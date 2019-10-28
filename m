Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 128E2E7859
	for <lists+linux-rockchip@lfdr.de>; Mon, 28 Oct 2019 19:23:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cbSeE5IR7jsrj6x0keqe8oFq137rAR/Y/HgtDtUAINg=; b=aTtWHWbmATq45o
	o1l71H35VTGmj2hqN2rHwBuxuDXR4Y74PRcs22vALkwbwpb7rXmUpWwr6gUOiDLdMad23bFcaLPvr
	7+zQcx7dnwhp8dWtp46YNnRKV0RL+1bM5nhv3VQgEP/iw2qKdR3Cwcjg3geP9Oqo6nRWrKHr/+aJv
	md1CKm1fJW4wbY5tzui0oe+iOVaUWKqGLSmRIGzWE4i6UMI3Lm31szyQ/cUkswTrGpw3sClMTAaiK
	O7wW0639s1B13jrsl1w+4lQZ8q4Ila0vLcKNXp3KokRcfvMxYCnktBwD///khj6uoJpFjLExfaRIv
	UQZNgdRfZrDvcjwm4uVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP9fy-0001cw-3X; Mon, 28 Oct 2019 18:23:34 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP9fr-0001Wn-Gx
 for linux-rockchip@lists.infradead.org; Mon, 28 Oct 2019 18:23:28 +0000
Received: by mail-qk1-x743.google.com with SMTP id h6so1274677qkf.2
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Oct 2019 11:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0/i6iib0QOySXmB9hMOchk2gqiCio9IrBQ0i7JtpvQ8=;
 b=glavdkw8cp4fn74iXdJZa7mzXJqdYB1oftGYI/YZPz1jGY0UV041SWlEIXGUV1/q+X
 30QerC4L/9veoteKetM98kE2nSDT2iNTHXXBUS3WzeHmVpEPow53RBYx/uglPeax9Tio
 ZuHLIP4U90fPzoeWafzxK7hFF/tTisc2Mfd5fz4YI91qlBozpdSQPQVm9+QtAnRNuM+3
 wXxETtJJCA43x1eDjVN1K0zrPtXA9F59ok4lV+BKCL8cQGx032AgMJBNE+Bhf6jWIAGN
 GUqM5ny2WjkUrr4JacM1+a1scp9EADl678RwqlTbccPNgHGMi9+bA5aHCB+VMqjwqSKC
 apaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0/i6iib0QOySXmB9hMOchk2gqiCio9IrBQ0i7JtpvQ8=;
 b=DbR2puk/dCuQXrHPcyEekcy33d4C/f+4Z7ja8diOEut6fuyMLP/q0KrOg7JnuEhr6a
 X0yzAW79x5JW57ukIYsZWNdL8TXNgFraEMmyM/XNIgwG+BgYD+hLQRQq2Lb942+eb5IW
 3CxJouPBBAyAJ/2cZbRvQAZgN19hGcv10/mHF8d75ZNyixA3oRjl3VwjUVPWv5JLtgDZ
 AU59JzrWfRwN9SgFzg/C/Ejp92ctFrw2FfsZBPw03PuZu3h78ZFlfGmT0yP2OuN6eSsb
 CXwZWqrNHnjF6w5SLQKprPILuIeTemf9QvtixIAbv3MCmxvJwpnPbo3Z0vRpg8LCuM1d
 hZSg==
X-Gm-Message-State: APjAAAXanAAtIavpLmAY6QvNzyUwtrojQy4IMyPRVkkW8fD5+XcxGiuI
 dq0SizInUiGZ4PKm0CXXc2XlUSV8htLc/Q==
X-Google-Smtp-Source: APXvYqxj9YsGeXLUuF/3NgVDL62I80DKTBCWKY3BsPDvmifn2t3iMdDCubfZHSH7GyVsSq3rLrPWIA==
X-Received: by 2002:a37:78f:: with SMTP id 137mr16724495qkh.321.1572287006005; 
 Mon, 28 Oct 2019 11:23:26 -0700 (PDT)
Received: from firefly.sparksnet ([2601:153:900:a52:6f12:874c:d2b2:a9d0])
 by smtp.gmail.com with ESMTPSA id x9sm5808631qkl.75.2019.10.28.11.23.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 11:23:24 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 5/5] arm64: dts: rockchip: enable usb3 on rk3328-roc-cc
Date: Mon, 28 Oct 2019 18:22:54 +0000
Message-Id: <20191028182254.30739-6-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191028182254.30739-1-pgwipeout@gmail.com>
References: <20191028182254.30739-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_112327_577250_99461278 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: katsuhiro@katsuster.net, linux-rockchip@lists.infradead.org,
 linux-usb@vger.kernel.org, robin.murphy@arm.com,
 Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable the usb3 controller and phy on the rk3328-roc-cc device tree.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../arm64/boot/dts/rockchip/rk3328-roc-cc.dts | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index bb40c163b05d..f300f3d0f02e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -328,6 +328,18 @@
 	status = "okay";
 };
 
+&u3phy {
+	status = "okay";
+};
+
+&u3phy_utmi {
+	status = "okay";
+};
+
+&u3phy_pipe {
+	status = "okay";
+};
+
 &uart2 {
 	status = "okay";
 };
@@ -344,6 +356,15 @@
 	status = "okay";
 };
 
+&usbdrd3 {
+	status = "okay";
+};
+
+&usbdrd_dwc3 {
+	dr_mode = "host";
+	status = "okay";
+};
+
 &vop {
 	status = "okay";
 };
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
