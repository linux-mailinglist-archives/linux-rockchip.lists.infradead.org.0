Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2461091CE
	for <lists+linux-rockchip@lfdr.de>; Mon, 25 Nov 2019 17:29:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BTdcZ+H46ciAPU8kG/LGfuGLZz+Y+3wBXBlKgmUHlJ4=; b=ixvNJN6xh6wo0g
	O5WDAsVVDLegnMWQVPkg1/rUe/6xkJv7jNoIPtUdxPAUliHadE6amjo8sy3H+6wOFpkR6g2OeBS+q
	LG4xtK+s5hDruvTFOzd0NqIlSD2FbP9mypygKOuw9KtCQrC5CglfPUNXx605i6xczWzjvO11v6rSg
	HAJxNsWGz2XbyYObwrAo/vQri8mU97/sZ84HDLz1xP33pthsh0/yjcgk1b8vf0LOIvAoHqUn++R+V
	ROHOUnsgptFU6CLP1PlBd+A2t8Nx6JP7FYUPZOmQPKaAybBOrLKo/b622dgjWh5oO26YwT6cQ2paC
	RJXrITTvHCvQMyRZofRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZHEl-00031L-SL; Mon, 25 Nov 2019 16:29:19 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZHEi-000310-Hl
 for linux-rockchip@lists.infradead.org; Mon, 25 Nov 2019 16:29:17 +0000
Received: by mail-qk1-x733.google.com with SMTP id e187so13285058qkf.4
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Nov 2019 08:29:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=ruFw6LEi3lJBm9o1EDD/YfPur3uYdaZ3CkAILbdKHVs=;
 b=BHD9xpEzSCtIWCDjlfxJ30Zjgpgr1ge+IGUOQT4OfgpA+2/LojqeQbUkl52gxCBfpw
 JChV63bgN1NQ9DOuwA6nAB1FaQnjB6ngKWqtEcNjxMxJp8j4hX1jo8TP6jxSLE+xqu8x
 Vbl+RIYo8ixus1RrYL9GnuzohF8bgmwVwUNvrK3SfaqJ/hDVvd/uU6fjHTgJZNOg1S57
 0b+fTuKzpEaYT/+PFIhx0opyhG67SW9ulBScjTzwbUGH90d5KpPZ9HBPLhLKUF/upsMM
 9bUtg9t6ttvdU1o7+Y1eaLGVld69z1oiew86mty/mSDE1BwANp0odZoFflmhRe3Lh0Wb
 P9Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=ruFw6LEi3lJBm9o1EDD/YfPur3uYdaZ3CkAILbdKHVs=;
 b=rNo4JLsGcvRnRBopr4WVfDnucU2cJ8/PNQJqo15EReLJRP7OvvNnLTQlh5Ikf6xfKK
 HqTyiGIRsQlqG8Dno4VLpIF39qjYJdIY+PMiAhhrqT2cv4lQrP0boUI65zT5gOAUmCwL
 ZCuU+ChHSApApcfSbhgODlVAdCW8r+sd/D4zVaLtqySF+Vhl4biFRa5qMrqk36P//3pb
 M9vxNvSE5koVZCvrp8xO57kPXWZyHkpIEPTcoz6qZ9hfs2SsyQFLhxK182PjLY1/4I8s
 vO0lTKOdhw60i80Kj0FwzHuwu/o33DznJy6nVbfzx84hG3B13bLEzFNiQ3XOIIn68P1n
 FUMA==
X-Gm-Message-State: APjAAAXogL8KQ50NA0ZOI/zIJpcLSFhC3evxfNqCusus9YywtqChqw/5
 tUE060qlvW9844uTTiveKEarzprOMWeU6DM0hgZCxyrS
X-Google-Smtp-Source: APXvYqwX3C4etuK7FU8nYuedyyF5ydcczSmUPsW7ZlEBKYJiVb5TEqh9ISSgpmwAwdEoSclROktgw62zvIN/QRKv7rA=
X-Received: by 2002:a37:cd4:: with SMTP id 203mr15355114qkm.224.1574699354425; 
 Mon, 25 Nov 2019 08:29:14 -0800 (PST)
MIME-Version: 1.0
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 25 Nov 2019 11:28:53 -0500
Message-ID: <CAMdYzYrLX=z-OVoW9RVecjoYK1J8EfLQ=cV1aNUqPsXqiOU+2g@mail.gmail.com>
Subject: [BUG] rk3399 fails to reboot correctly with PCIE device inserted
To: heiko.stuebner@theobroma-systems.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_082916_613395_2F46FBF2 
X-CRM114-Status: UNSURE (   6.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:733 listed in]
 [list.dnswl.org]
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

Good Morning,

Another issue I've come across while testing PCIE on the rockpro64.
When a PCIE device is inserted into the board, and it enumerates
successfully, the board will not reset.
I've tried various states of u-boot-rockchip, u-boot-mainline, with
both miniloader and TPL/SPL.

With miniloader and both variants of u-boot, if you attempt a reboot
it never fires the "reboot: Restarting system" message.
If you trigger a sysrq reboot at this stage, it will reboot, but fails
to start up the two a72 cores and subsequently hangs a second later
when it loads the first dma driver.

With TPL/SPL on mainline-u-boot (I can't get rockchip-u-boot to work
with TPL/SPL), it fires the "reboot: Restarting system" message, but
never reboots.
sysrq does not function at this point.

I believe the pcie controller is not being halted, and gets stuck in a
loop with the two a72 cores.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
