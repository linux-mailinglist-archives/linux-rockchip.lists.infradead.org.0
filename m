Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 539D01094DA
	for <lists+linux-rockchip@lfdr.de>; Mon, 25 Nov 2019 21:52:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jFyzLIEjeHyqVwlcpAagPBxTLp2uIt5uoZQYD5yKOag=; b=WeoyoPoI3QAfzs
	BYxr4x6Zg0rnqfpho1QvpJrpbqJ+XdlSP+LNw7GVPpmEknH9Xl6OnGQt1/pi3bDpOaf5z/isBKbor
	+c5l5Msgi0dTScWX/o6KrG5xLEdhkg5ThuAinqhQxng4GChRsTck5FvgsTLflIVy9meCvQxJrPHwJ
	ViTeoijxTuWfMfEOZok0Txq1U3dnV1JFe+hdpMD+k+C5VmKWnI8CPtFvzQi1OpvpCTgJxnB56xHTe
	v/gT6uPyEBrwdFggz7jBDdcwdYRYY7F0t2LvszFMXUurCu2Pm7q6vshqpWBelT+L9+cYsRwQTvVcp
	SU2fg38l/O5UW7D6z8tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZLLj-00020d-Iu; Mon, 25 Nov 2019 20:52:47 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZLLg-000206-H2
 for linux-rockchip@lists.infradead.org; Mon, 25 Nov 2019 20:52:45 +0000
Received: by mail-qt1-x830.google.com with SMTP id t20so18772306qtn.9
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Nov 2019 12:52:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=5+/4GKALahfG/qwRuXLMdz7JuDCUQ9peiaJzLkIkvUI=;
 b=Y1GZ1XK0+illWC6OhKNYDDJsRCToL/xhE5XsLWXtaNwDbaDdtB/uTn9COWbSZlrTMQ
 C2+2Gb7d72kPNCEh+han9e0LF0WvG4GpUIyIuYgsIsEh+M5UQqUoc5xum4QZJcf4jaSt
 FptkGTh0CaE70tF09Zfs3eMc7tvltVVouP7D8iWYMSBRbhWYHzHfE7tOuJGlTR88sZGm
 /ekeg8ZxdjCuHPMu6OKHs8FrbZX5WWjqxWsdZU2zEYLkK6my9w2I6/GciKiE1fIiDlTM
 GXX2eU7bw1CJEbwJKkuzb45onG1r/q90U5fp7S/53HEmvTOI9pO8mt4kWS/S893A9Lh8
 ImMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=5+/4GKALahfG/qwRuXLMdz7JuDCUQ9peiaJzLkIkvUI=;
 b=nxoIDNmLMeBRvRzJESRs1FdPVO67Lx2q82vZHUkgcFPjymYyFpdRz/qoYZy8uMt16Y
 ooeJsMwYidJ+ilIRhL1B9bMKmsrCJcZ7a3uSWZ/lG0+J4Tn+Jfq11DKO8OseArFxaaid
 qK/qk/EAd87z5BZZgp8aQliunPO2LUqdGbzes5MCIJb+oPgAj/pOHhWkMZqbB21aryf4
 bWjhKAc9NDUSgc32/Hcnj7SHXW/RuAyLwcNezksJJ1PMdE2ctc4EpwZNyqK3Znk1XEKY
 mV6rLH4pngLbvMVsZ/dOUmUs7n8f34D3dO110eZpOUG17he575zqQfJDTem3Ox9vHmw1
 WKqA==
X-Gm-Message-State: APjAAAXTQxWWD8bCNJt8JVvPoI8IZXJgTwiPWm19qeWBSmJKsZinYRrT
 Kj3HZIIBEI/JOJYM0gM+7JBpTg+XVoTSPMNEcsUlZA==
X-Google-Smtp-Source: APXvYqxd4Fvqt4ibbBRRMeHQ+CobPSYi6Iy6vSvkI1o3fIpO3MJEoXMPYB3hcpxIshXGUXPjNHFnJqjYEmcp2PnSZHg=
X-Received: by 2002:aed:25ce:: with SMTP id y14mr21996781qtc.16.1574715163086; 
 Mon, 25 Nov 2019 12:52:43 -0800 (PST)
MIME-Version: 1.0
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 25 Nov 2019 15:52:22 -0500
Message-ID: <CAMdYzYoXZpTYa_YJvPDcaEFde_7xc+=fnXsLb45=z_kDQbgkvQ@mail.gmail.com>
Subject: [RFC] rk3399 pcie move to designware driver
To: heiko.stuebner@theobroma-systems.com, Shawn Lin <shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_125244_567065_323E7F91 
X-CRM114-Status: UNSURE (   6.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:830 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Good Afternoon,

I asked this question in my pcie bug report, but I think it got lost
in the mess so I will ask it standalone.
I noticed that there is a lot of code overlap between the shared dwc
pcie driver and the rockchip driver.
Is there a particular reason we aren't using the shared driver instead
of reinventing the wheel?

I know that our registers don't seem to line up with the default dwc
registers, but tegra and qcom both seem to implement custom registers.
I started trying to write a dwc layer driver for the rockchip, but as
I have very little experience with pcie I was quickly overwhelmed.

Is there anything outright blocking the move to the shared driver?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
