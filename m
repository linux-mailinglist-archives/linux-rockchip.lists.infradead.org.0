Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EF71386AC
	for <lists+linux-rockchip@lfdr.de>; Sun, 12 Jan 2020 14:41:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BTFCZ8ySPAsgOqYnhKD85/az0G8yQYD/GcJHNu5monQ=; b=PLLGyuTGPEilaL
	vujUV/x+Q3pe+PqmuzuRUkAA5i6K/Afvoo7ee+87uud78vhn1QhC2CaNolaMU9Ir1plYX49w8hKc6
	Wdwba2gM7s0j7QMf3jLfiomynDEwdZuj5a3nAvtuyupk8f3s0yLlQpYtqzk70sa0bMdjh/jPjwsUI
	EKzL1224eOfjCdH5ek1XjeG7SQDM+vrWR1xni3h5Mm38PSKtVrhknfmA7v1KTyAIVs3WLLS9Kcrdv
	oT/RbYBqtpNH+B8iyVvIvDxHIz7wa/vvbwAYqdbncUuvw18NIflEp3ke/8gvRn4VC/YbRqJXcwaRm
	GzmH7VfkzSmH6+HGI89Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqdUR-0002MX-Pq; Sun, 12 Jan 2020 13:41:15 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqdUP-0002MF-0K
 for linux-rockchip@lists.infradead.org; Sun, 12 Jan 2020 13:41:14 +0000
Received: by mail-qt1-x82e.google.com with SMTP id e12so6758027qto.2
 for <linux-rockchip@lists.infradead.org>; Sun, 12 Jan 2020 05:41:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MY9xKDworHQl21RE1r3VJCfNXwwlcyOouVnl/Rz4Y6I=;
 b=c3xsS5v6XXCkeB6fRX8MdZWrnuDAURoz5oJ4edEUeHkzzR4QBmKlsJXn97WtRfm7LF
 qodVwRHnq+gGO4mQxxefPfxsBIOnpxsQynkXbHpNGEXiH85sS4hu8w5hfi82mbVfRA58
 fP/7/2GM6WlKR3zzLRspp7jExuf7Swo7l2QcXBrQLKrVb57S+SqiZ5GXJc8N61xCzKtC
 W8C3PB2R3ZOPhags3VnNZw25UjeYjWFwCAt4CB9ZdUiHoKvM0YCmguTuF2SnwuQj1X63
 wcCnxydP2y2Mk67nVy5JsJ/8EO3S9jmxn7r/GgSgj/sgkZn3MLFbBBHyOkC8ppu5olMh
 a4sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MY9xKDworHQl21RE1r3VJCfNXwwlcyOouVnl/Rz4Y6I=;
 b=GyckFBoO4/up0OQ4hDBlVZaXf4majphIaoX6LyyhaljyXp6UD+G7i7k//A5ns35GdU
 5cwbm9J1heqtd7EUPonCyaR+AL86FQdmAJddmjnExZEvDLtVwAzN50qiyjfEahuXhpyJ
 8ahcJbG3T2Ea1+VXCRPR/R3A2IQ8V55wnFBk+3duMy746xdT6ALFod0BsIk5sAnQYYMA
 4Rii3hPrlwNln3Ik4sBg36Wh8QBNhNmQw3/4ez+sEcU6X3Gr1lMoiTXv4tUwIS3HrFwQ
 nfdM0M/PrIU37RGbnm3zgJuRanZCDSrEa1BLlWP+uIIZSbPRXPQtj9u+oXgh/tN0W/fm
 59pA==
X-Gm-Message-State: APjAAAU6Y1JCWUGcoYslpQNdG+n/pFU/8Gb7bXK6z0GlySkmZ5GggYB3
 09qQKxEtHMgIIINmlpHIi/R6RNOAUpuxLW82k2Q=
X-Google-Smtp-Source: APXvYqxxU7OSo8it7tzTP/jUmqifr82K1a/x9jVv9/n/0dlbRueOhNrBVdKqUm7/qLNnGcpgqNCV6azKnKajjnnXml4=
X-Received: by 2002:ac8:1385:: with SMTP id h5mr6292026qtj.59.1578836471172;
 Sun, 12 Jan 2020 05:41:11 -0800 (PST)
MIME-Version: 1.0
References: <CAMdYzYpHxMELdB4HzsViFvrLcDzG0A4000PJU6wHTaq4V9c1Nw@mail.gmail.com>
 <CAMdYzYo6HG+NK2BHNaULtD=Lu=Ozd6pFW4YRXF8QF_UGLjJN_w@mail.gmail.com>
 <E3092315-8D1F-4A43-B485-02D526F57B21@gmail.com>
 <CAMdYzYordu8S4S9nT=af4SeuLq-nvUT12XN9TgE=EbSYo4=81A@mail.gmail.com>
 <CAMdYzYokRUXRQiZ8d0QxvmT9KZkypZfNpQUbzWovx+WzKu_OFg@mail.gmail.com>
In-Reply-To: <CAMdYzYokRUXRQiZ8d0QxvmT9KZkypZfNpQUbzWovx+WzKu_OFg@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sun, 12 Jan 2020 08:41:00 -0500
Message-ID: <CAMdYzYq0SYL3T-zgxudpXYJM26RW=7cx9jWTKU+aP=dB64hYSw@mail.gmail.com>
Subject: Re: [RFC] Permanent Fix for RK33 gmac 1500 mtu bug
To: Hugh Cole-Baker <sigmaris@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_054113_071590_1DBE674E 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 2:36 PM Peter Geis <pgwipeout@gmail.com> wrote:
>
> <snip>
>
> Good Afternoon,
>
> There has been significant code dumped in to 5.4.x by Jose Abreu
> <Jose.Abreu@synopsys.com>.
> Today I clean built 5.4.10 and it seems at least on the rk3399 our tx
> offload issue is resolved.

Just a note, you'll need to cherry pick the following commit,
otherwise ethernet is broken on 5.4.10
commit 42ed6e2fa9f167ce8197a41ebcf8974c4d90f9d4 (HEAD -> rk3399-rockpro64)
Author: Jose Abreu <Jose.Abreu@synopsys.com>
Date:   Tue Jan 7 13:35:42 2020 +0100

    net: stmmac: Fixed link does not need MDIO Bus

>
> I'm currently load testing, but if a few others would be willing to
> test as well it would be greatly appreciated.
>
> Happy New Year!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
