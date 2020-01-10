Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4FF137754
	for <lists+linux-rockchip@lfdr.de>; Fri, 10 Jan 2020 20:36:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V5mR9EDO4s1yDrrYMTgBD/kTxbUomWP62hMu/qqKRjo=; b=nx9eOBKRcky1DB
	BIIMPzFzagStem50h6oXu3xKIQ7nw7lUQvT9pHiKhKwcCOLh4U13HpzxAXZLgqMicJiAmxqYEgQrf
	bEWU6Bc1n+r1q4P3AdR/JwJK0sc9NP1mm2GFllKRTSvBHp+K4WLw/5IGaqQkTsNl9CWmMY06NkC1+
	s+LkaDJigAA9TzZlyqoyvBxZQPnhVnwzjWkjWrOPD4GCtsHKqx3TIEgOAKVhZCX+a9lshbY6B20Jf
	7eQRwsxuQj9hlau1UmSB8ZSmioer6obmcyMdPJUUacLdYgN57thbaR/LaNeVBSKN/39xGsYk4Iqwe
	TC2PbQ4J5gXwa18eaYNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq05K-0004c9-Ut; Fri, 10 Jan 2020 19:36:42 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq05I-0004bR-MI
 for linux-rockchip@lists.infradead.org; Fri, 10 Jan 2020 19:36:41 +0000
Received: by mail-qt1-x82b.google.com with SMTP id n15so2961120qtp.5
 for <linux-rockchip@lists.infradead.org>; Fri, 10 Jan 2020 11:36:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IEJR0BdUSXuAsAg38xlTcJltTovEF1KpbgKPqGtyL90=;
 b=VwzF6NBecXcaU/0ZGW6DWG0yk6+bYcPjNcQ9rAt32rnq27nm/+lJJOXQ1KbhJt1bl+
 QkxarPi+gLVfqoKuo5gxBLID35WMWmSWEjFnw18Pm0jEerDOYPu6PX7iaiYmNaT5Wwlo
 nmjAJDORS9flltMTddTMd0RkcsGZrAd9PVsKW6+1UOQgbreRlTan5MAmrYmth4/gXKrY
 /f8QeYrHbIsfDVgBnOieyMacVJzchGTAPGw9+Qlv2oqE+6i2gkE3oCJuaNqvlN+NLdQ9
 Kl1otRirMecaDcYumD88VSTPy0V2uAlWJuQym9mMDSmyR0omOjxroOgRLto2W2DYL/YS
 GO0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IEJR0BdUSXuAsAg38xlTcJltTovEF1KpbgKPqGtyL90=;
 b=ISg1OYGh9ZYUGrz9njV6mEH49GpkKbm9n9qa+kxK/QQ8pB32a1zK8BqSDDryQaDFPj
 yb3drd5IDg36RYQrT8mR3LrzNNszKPTdQJMixzzvBaYrRDY2vUSEh3D6HDV43uOO3u7M
 WjafOMZoLGLeMdvo8MJjV6yL8RuvDVTbqnb5lVt0WEvEPAQfFGSVLgpOlwb4jE739egZ
 Hmid9LF3RM9Dtvhmri7bo6f5JQZdnM6m8S074WkosSWqa6QYC+ncmtTwVlxyMjrZaaVi
 qjHqT6QbChpwPcmQc9pD3qlmoLPuVDiE8qkDprqRQGN15Oned8lnDVsDR3h1fPBw6IV8
 efSg==
X-Gm-Message-State: APjAAAW3ismUqthb5ZmCfngkQpP5/U6jP74itpEKTJ9xjfQAeehCurAd
 OF9zKfYjvVP7jcY8bdprM2Bmk7r7HGtV3gIdJVQ=
X-Google-Smtp-Source: APXvYqy8cyVMts1jYAp6BYum0TtmNzoTq827HY3LF/50V64Xp6l4p8dVRpanMapyeIm4FspzSFdBM6atAHtGHNewoSU=
X-Received: by 2002:ac8:75d8:: with SMTP id z24mr52092qtq.193.1578684999103;
 Fri, 10 Jan 2020 11:36:39 -0800 (PST)
MIME-Version: 1.0
References: <CAMdYzYpHxMELdB4HzsViFvrLcDzG0A4000PJU6wHTaq4V9c1Nw@mail.gmail.com>
 <CAMdYzYo6HG+NK2BHNaULtD=Lu=Ozd6pFW4YRXF8QF_UGLjJN_w@mail.gmail.com>
 <E3092315-8D1F-4A43-B485-02D526F57B21@gmail.com>
 <CAMdYzYordu8S4S9nT=af4SeuLq-nvUT12XN9TgE=EbSYo4=81A@mail.gmail.com>
In-Reply-To: <CAMdYzYordu8S4S9nT=af4SeuLq-nvUT12XN9TgE=EbSYo4=81A@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 10 Jan 2020 14:36:23 -0500
Message-ID: <CAMdYzYokRUXRQiZ8d0QxvmT9KZkypZfNpQUbzWovx+WzKu_OFg@mail.gmail.com>
Subject: Re: [RFC] Permanent Fix for RK33 gmac 1500 mtu bug
To: Hugh Cole-Baker <sigmaris@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_113640_730798_8C4C202E 
X-CRM114-Status: UNSURE (   4.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

<snip>

Good Afternoon,

There has been significant code dumped in to 5.4.x by Jose Abreu
<Jose.Abreu@synopsys.com>.
Today I clean built 5.4.10 and it seems at least on the rk3399 our tx
offload issue is resolved.

I'm currently load testing, but if a few others would be willing to
test as well it would be greatly appreciated.

Happy New Year!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
