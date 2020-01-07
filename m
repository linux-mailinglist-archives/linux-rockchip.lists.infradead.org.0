Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A51E1132DE1
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 Jan 2020 19:01:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Rgbwqv1I+sWUQNa+dd8Oogfa5BERWM2gKGQd/3ijJdc=; b=kA6
	rKiIxHkdp4t2aDPliCYb9ZS8MSl3vuoqofVLqjwnS6SxP1eMDAHTzJAJKOU8630DuuEhC+Gwe5soG
	bPu+Ie6dohUModSspwBjOkirFmbCJehOwS9HLhqhsX7Z+yH22D/670XFt47Nx270Al1D9x77tvxyC
	FM3a1S/6c+E6Yqtcw15qvTQ4FOyp8ImC4MLurP2yEYGdr6qChgxoZhN1QRcPzqnsqu+FwniWDoF/w
	7TjbqiQFLNnBZQ7iVLX1Nhzt1dinTFq/46CevnaPDItWb1RzL58V1wd8TqLwgqnZ5d9n3NfZQJ7Ie
	9MCT7iL/f5+oBJLTtGCQU11u6fk7lTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iotA5-0003w6-8X; Tue, 07 Jan 2020 18:01:01 +0000
Received: from mail-io1-xd31.google.com ([2607:f8b0:4864:20::d31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iot9w-0003ui-4l
 for linux-rockchip@lists.infradead.org; Tue, 07 Jan 2020 18:00:58 +0000
Received: by mail-io1-xd31.google.com with SMTP id n11so222702iom.9
 for <linux-rockchip@lists.infradead.org>; Tue, 07 Jan 2020 10:00:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=z+bvT+/ytTL9caOk5nOSZNgNPK5IXu1waPag5ni3RY4=;
 b=RbkorQp7Bk9GzvnQ3IytFbbLruz3TkfpGbrhRrPVtbM8+b6CbkYyTGswCLP6z/zbre
 Nx4ep+JnqjJGAaQriJ/9YWsabLjfbybEKvwrRFQbvgbe7TutqLlJS8fNOXMbwxVHHS0i
 g+e9O25Z6MHKpq6KQeBr0Pmh8ucQs07dez5rTBGivwQRhwki6ZMPieS66j1jcsM6P2xZ
 e0rIxpP77ybYi8lpZjACsXDnmlwYuI68bUwBgZoDRZuNqvCE7RkPSB2GTT2fl3HRzmQZ
 Km/8zTeeU9eFji0NfE8EVStH+yQzZjBfMC45xhEe36ROG+Q+NPmtC3zK6Zp/sfWVAumh
 nagA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=z+bvT+/ytTL9caOk5nOSZNgNPK5IXu1waPag5ni3RY4=;
 b=M2WzdLtF9eeZdiA18ugDj1LT8Wcdr8gNrBetcvuMXv+I1O8zi6Nyt3YF7fgLSN7BEv
 /EtAEEbGyuOoZYnT/uCp3gKCgDYmhSgUx7MAA/8oPJvsrGPm/X1u5L3Xhn1yoP9VmekJ
 umsKK5PRW8h2FU3EtG0EANkzLvJAcN8VTavSpMrsgL8xqaECtYtCr2oL9SkSC+/HhMBL
 1JiCKsbj0PcxXR+2dkiyYakj6Y2k7Oh7lrfKFtAWr1vo9bhJ2rUOMsTowQuEvYn7Nn5G
 qyoSz4BVcT9p8d0dhQ8+cDdbmMmcbmxlwUbOIs/thEavdLvQN0WxB353fonGHOuAhpO7
 +KEg==
X-Gm-Message-State: APjAAAUW326EF0RU+uOC0EYQzDsObGQ/zaA1JA9rmumQzwuD2LD/qXM2
 0LYAwgrPi5F+Nf63GNzsq+IG0m3vehsrzAM0Zy8=
X-Google-Smtp-Source: APXvYqxIj+1Bk9V+Rh0oBa0IhD+RRl3drp1/OaGgV+JZLeWgsfQWw345vaV54vIj550/goE0nWmEyYkbkI04TO07XT4=
X-Received: by 2002:a5e:9617:: with SMTP id a23mr93671ioq.243.1578420049588;
 Tue, 07 Jan 2020 10:00:49 -0800 (PST)
MIME-Version: 1.0
From: Anand Moon <linux.amoon@gmail.com>
Date: Tue, 7 Jan 2020 23:30:37 +0530
Message-ID: <CANAwSgRXd=w87CKO4WQz7ZRAk+un7ctTPCi5XSa7GfNDhjy0YQ@mail.gmail.com>
Subject: rk3399 rockchip pcie power domain is saying unsupported
To: Heiko Stuebner <heiko@sntech.de>, Robin Murphy <robin.murphy@arm.com>, 
 Linux Kernel <linux-kernel@vger.kernel.org>, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_100053_060090_6ADC67DA 
X-CRM114-Status: UNSURE (   6.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d31 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi All,

On my rock960 I want to add power domain feature for pcie node using
following patch. [0] https://patchwork.kernel.org/patch/9322549/
I also tried to add some more cru to see below
but the power domain summary shows unsupported

# cat /sys/kernel/debug/pm_genpd/pm_genpd_summary
...
pd_sdioaudio                    off-0
    /devices/platform/fe310000.dwmmc                    suspended
    /devices/platform/ff8a0000.i2s                      suspended
pd_perihp                       on
    /devices/platform/fe380000.usb                      unsupported
    /devices/platform/fe3c0000.usb                      unsupported
    /devices/platform/fe3a0000.usb                      suspended
    /devices/platform/fe3e0000.usb                      suspended
    /devices/platform/f8000000.pcie                     unsupported
pd_sd                           on
    /devices/platform/fe320000.dwmmc                    active
pd_gmac                         off-0
...
can any one share more inputs.
----
@@ -1049,6 +1056,19 @@
                                         <&cru SCLK_SDMMC>;
                                pm_qos = <&qos_sd>;
                        };
+                       pd_perihp@RK3399_PD_PERIHP {
+                               reg = <RK3399_PD_PERIHP>;
+                               clocks = <&cru ACLK_PERIHP>,
+                                        <&cru SCLK_PCIEPHY_REF>,
+                                        <&cru ACLK_PERF_PCIE>,
+                                        <&cru ACLK_PCIE>,
+                                        <&cru PCLK_PCIE>,
+                                        <&cru SCLK_PCIE_PM>;
+                               pm_qos = <&qos_perihp>,
+                                        <&qos_pcie>,
+                                        <&qos_usb_host0>,
+                                        <&qos_usb_host1>;
+                       };

-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
