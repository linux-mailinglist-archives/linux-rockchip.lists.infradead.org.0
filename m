Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B06C11CE32
	for <lists+linux-rockchip@lfdr.de>; Thu, 12 Dec 2019 14:22:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eC0jtk9i7akftZyHSspU2+6rI7Usgw5u1D9a0CxtHDY=; b=rcA
	w/uvowIU+RXA3WuM5VWKmNGuBZREWxmh+9P1S9u4oD5FaTiXutocT93AdnTtp6KJfy5x3xcO6TldU
	Q+5KLINZAb4bgDLpUYE+C/Dma3V0b/965ui1+cSqXt24On1fXYBerLoLTrfb9lpzWu2RIJPG1r23/
	vz/GS+UW6JEPIV141JrqR58ohk8bsHRsaa02J83rVui7Xi6oyKExAv1d6ic+qr3nwmou0fKKO6a4x
	T06WMQjpEFfL5qLZBxTSBCk7pXNq1FssmozQTmnmKw8Kc4A2PskfICQ+GZFjZDEsSG0oBwHNSlK6E
	hMTnxuHeprdpIOZyQdNvqtj3ZZ3mdSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifOPo-0007ID-Kg; Thu, 12 Dec 2019 13:22:00 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifOPj-0007HI-NH
 for linux-rockchip@lists.infradead.org; Thu, 12 Dec 2019 13:21:59 +0000
Received: by mail-qk1-x743.google.com with SMTP id z76so1559916qka.2
 for <linux-rockchip@lists.infradead.org>; Thu, 12 Dec 2019 05:21:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=vK09BU95vwmhjs9yIbSop3ZtHz3AwRrHSUs8f02AsFY=;
 b=piWXq2ikbxHt5nUmoo4OYiKpkow5ju+3XhgPti0IL9K0fs/PySNKvSWXjg9pEYKxPa
 wIAaDB2LFshe6FfzB3iWNYKYL5JvJiOklbq8dHjk9xEet/pD/mBvN6F3hB9ug7abV4ix
 wXI/S97mHgRL4hi2hijAlMD7KiExoNA/rZZ1PrznbN2XIwSV9Xm+6FweoATRKYeu6sF7
 +bkofLUt1BNlmRtWXKXKX2Z0+eknweJ6+wAPcnfJh46B6TXFYGF7u46oyDLmpXiNLl3R
 0i3ud7saKMxhEJm0WIzaLdCTdbxpCme9J1zgC/Y5IyJMDFgkYTx3K8q8hkBhfdY/IXYz
 AhiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=vK09BU95vwmhjs9yIbSop3ZtHz3AwRrHSUs8f02AsFY=;
 b=kqSBjwkmYpa+3LMuX6pjtgr9c7uKugFnvph59xrDtvgYxIfR+8FJ3UffWCkEn6dBSj
 PERkOe4B+JnTbqH+fYVxjmx1KQ6oUKvy7OyeL+1lkvrGPQevgRniAvuB4A6M+rF0cBDq
 oi10C8IDiLVbWTDkV2NQIZviY0+dlQ0G90L0bF9QEngFJKnLKUbWKJFtLCdEuZA0Ak00
 QTlyUNbJ0tScaN/Ef6kZ0Caq8Il8DUqPetSWwp2+UlGrCrimRIObmy8DSvkOfOEcB0ST
 FzTAhN4UJKWhF/YTDlWD2VqITjXbJOzf6jo0K9jGIbcV6v3opX7iuIMi/Xiq6CbVEldr
 y/eg==
X-Gm-Message-State: APjAAAWDAiPF5YoPTjdMQZ7YjHV1X4wUH45AGY8jI5kcwYP7sfMZnmHO
 ZUhTHkH3cWoEncmHLxR97fqFlBc0whJGF+1G3CMMMB8Q
X-Google-Smtp-Source: APXvYqwSCL9Ub837FBJ99KxAIOJ9Pd+RTrd8rWWUyYQEkiLjH+93r9m5iIdR6SQTh/Hmhc81SlFFnSNLd5G8VGkSLOg=
X-Received: by 2002:a37:b2c6:: with SMTP id b189mr7838973qkf.87.1576156911118; 
 Thu, 12 Dec 2019 05:21:51 -0800 (PST)
MIME-Version: 1.0
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 12 Dec 2019 08:21:38 -0500
Message-ID: <CAMdYzYpHxMELdB4HzsViFvrLcDzG0A4000PJU6wHTaq4V9c1Nw@mail.gmail.com>
Subject: [RFC] Permanent Fix for RK33 gmac 1500 mtu bug
To: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_052157_939369_059F583B 
X-CRM114-Status: UNSURE (   5.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Good Morning,

So I've continued work on fixing the rk3328/rk3399 gmac mtu tx coe offload bug.
I've found two fixes that maintain full performance and work consistently.

First, is ayufan's tx coe patch [0], which takes the bugged_jumbo
concept introduced in [1] and applies it to 1498 and above, vice 1500
and above.

The only downside is this disables tx coe for full size packets, which
has a negligible performance impact in my testing.

The other option I've found that reliably works is bringing the mtu
down to 1498.
This allows tx coe to remain enabled, but with the downside of total
loss of jumbo frames.
The reduction in size has a negligible performance impact in my testing.

I have also discovered that the rockchip implementation of the stmmac
driver does not process flags such as max-frame-size.

A third option, which I haven't explored because I don't know enough
about how it works, is possibly tuning the axi settings, via the
snps,axi-config and snps,mtl-tx-config handles.
I don't know if this is feasible, but since tuning the dma settings
affects the rk3328 I have hope.
I do know that my current fix for the rk3328 does not provide full
performance and does not work at all on the rk3399.

Thoughts?

[0] https://github.com/ayufan-rock64/linux-kernel/commit/8a41c672dd77e48b06c1b2dec3aa9db4bad30b49#diff-c897c0b53bd633240f4b12c4d29a5ff1
[1] https://github.com/torvalds/linux/commit/ebbb293f8b3021ae2009fcb7cb3b8a52fb5fd06a

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
