Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCCD11E3DA
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 13:49:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OrL16IqLU4Z3WW3bgnUodWrpb/U1IZpad+9L2B17EWk=; b=umt3GWAjTYBup3x09GRGWZ5vsW
	PvSy3AZhcjA0i9pUWcdc4smMW6lrXKyRwMRuKxnM6qchiuGokl3OtckfGbmWoiSIqwsshpHY3I1c/
	130JNrcWrTMbHJOU/qAEPSiOYngwha3eVbTWzRx3TNnG2SocrfF7S11GfDkevcvR1XXFxTCFVIFru
	CgHe+l/xj9Q0IzGZn93iXVNTPpPPyfhG4ZtHMlf3Hbqcyy7POwJOxmx10NSSP6+AlHbWEudo3S8Fl
	QISMs9zxP3+sggw1EExccTEgn2vu5yaTUG8x8A5yADOvUdLedTNryfhAOisiXIuCvfzq5+823aeEE
	AvcJrDXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifkNd-0007Au-HB; Fri, 13 Dec 2019 12:49:13 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifkNa-0007AO-06
 for linux-rockchip@lists.infradead.org; Fri, 13 Dec 2019 12:49:11 +0000
Received: by mail-qt1-x844.google.com with SMTP id d5so2179165qto.0
 for <linux-rockchip@lists.infradead.org>; Fri, 13 Dec 2019 04:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=XZ5BBHzYp0hdI4U02xqVXhEdGfj79FkcriYTXR2zDmU=;
 b=hC/MHUX58UiHm5h3UUR+xqppFEtCVZs/w+uO9EH4VcThaBHjAtlOshLXpwzArsKs0m
 xk9kp2kUNUbRKVI4uWvopIVWsUAEsYU+0gvW/IpbvbMSulyHCRn65JRwtb552VLa5Kwt
 584LHCIEKMUNdNPnGAPliX1WOzvQWyhLnKpgGpbYq/9/7Hg6qI1dSAIyI9i65TiB0cGU
 8MmSxLaYZ+mu2kAMeBHFTp/zLXzKOxbSxdFbfi7V+0hAJIcgPtGtmh3pk1uYYhD9e7os
 q73SqlSMzeIi8NDpZoIigRaTI5MJdA14ZSi0SSLLYknBU9H75cOsOSt2REVEk8EeNdll
 3jUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=XZ5BBHzYp0hdI4U02xqVXhEdGfj79FkcriYTXR2zDmU=;
 b=ZXuFX5fp9ore7G1tPG0eClPfaZ05BQWWyYJazVmvjh3E6qg3iO0CUxsjfLcxiFYzVK
 8mJZGYIkztPTyRwnyGZFWEKXPchJRx+/t9ZACNZ8d+fv5ADRvIZEVc9/2lHxcX9Q2CIf
 8RtU6+RPU3Md6yhfu4tRcB3q0zNFaT8Gwv81K01QLAcIeDp3CXFPWZUkgeiqsbnu6TQD
 IT7c2WuDuiEvWEM/e34hWGEvZm+kRubzVbySFfnqZWPDgIaKRJSyODJsNG8gthqBvNVL
 r/wevI0FXaJIPBMMj+E1M8/ATkZx44CY3u/y8sjZR+OcBG+ujO6H2cBzWGHSBxse8Oeh
 tIwA==
X-Gm-Message-State: APjAAAXer0UMUjAYtIogt6L2ZFL/8Xw0xpLqFFnh7/50nFDz/gXgMnHR
 3naYYUjtBwzMWS8HIFbyrQgTjYNY5zB3Y1/KTMPCzMEw
X-Google-Smtp-Source: APXvYqyyGffsfQyHrW6j00Pt0Ol6v7vqHxcpQter7FxHQJMz04jamhGNZgGad0L8EZTAV3WImCIsQcU7QvgmUqiDAqE=
X-Received: by 2002:aed:2d67:: with SMTP id h94mr11931170qtd.74.1576241348291; 
 Fri, 13 Dec 2019 04:49:08 -0800 (PST)
MIME-Version: 1.0
References: <CAMdYzYpHxMELdB4HzsViFvrLcDzG0A4000PJU6wHTaq4V9c1Nw@mail.gmail.com>
In-Reply-To: <CAMdYzYpHxMELdB4HzsViFvrLcDzG0A4000PJU6wHTaq4V9c1Nw@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 13 Dec 2019 07:48:57 -0500
Message-ID: <CAMdYzYo6HG+NK2BHNaULtD=Lu=Ozd6pFW4YRXF8QF_UGLjJN_w@mail.gmail.com>
Subject: Re: [RFC] Permanent Fix for RK33 gmac 1500 mtu bug
To: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_044910_042594_4970B1BB 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 8:21 AM Peter Geis <pgwipeout@gmail.com> wrote:
>
> Good Morning,
>
> So I've continued work on fixing the rk3328/rk3399 gmac mtu tx coe offload bug.
> I've found two fixes that maintain full performance and work consistently.
>
> First, is ayufan's tx coe patch [0], which takes the bugged_jumbo
> concept introduced in [1] and applies it to 1498 and above, vice 1500
> and above.
>
> The only downside is this disables tx coe for full size packets, which
> has a negligible performance impact in my testing.
>
> The other option I've found that reliably works is bringing the mtu
> down to 1498.
> This allows tx coe to remain enabled, but with the downside of total
> loss of jumbo frames.
> The reduction in size has a negligible performance impact in my testing.

Shortly after sending this I discovered that setting the mtu lower is
not sufficient in some corner cases.
I managed to make offload break even at a 1496 mtu by `apt install
kubuntu-desktop` over ssh on a gigabit internet connection.

After porting ayufan's patch the issue went away.
So unless we can fix this by axi tuning, his patch seems to be the
most viable option.

>
> I have also discovered that the rockchip implementation of the stmmac
> driver does not process flags such as max-frame-size.
>
> A third option, which I haven't explored because I don't know enough
> about how it works, is possibly tuning the axi settings, via the
> snps,axi-config and snps,mtl-tx-config handles.
> I don't know if this is feasible, but since tuning the dma settings
> affects the rk3328 I have hope.
> I do know that my current fix for the rk3328 does not provide full
> performance and does not work at all on the rk3399.
>
> Thoughts?
>
> [0] https://github.com/ayufan-rock64/linux-kernel/commit/8a41c672dd77e48b06c1b2dec3aa9db4bad30b49#diff-c897c0b53bd633240f4b12c4d29a5ff1
> [1] https://github.com/torvalds/linux/commit/ebbb293f8b3021ae2009fcb7cb3b8a52fb5fd06a

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
