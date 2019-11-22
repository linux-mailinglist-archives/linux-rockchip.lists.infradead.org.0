Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A72105DE6
	for <lists+linux-rockchip@lfdr.de>; Fri, 22 Nov 2019 02:03:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WBfuliLN1buCzFE2VHnW8WH466M5GFfEAQetzdaObNA=; b=WjBYav8pyAHx0T
	q3Y9srbq7bXJv9vBMIOVu+KL2dgoFjPgUrXQzdja1qqEp9gdog71eyU/mOG4rTIVSrXlCHuUJm5hC
	ySY2eNa/xK46y28Fx0Nt0GHzKgOk8IkNYzRQzOJcweWfdIfRJpm7Dx/JW7H5IOOV2trkM0Ut3Y+rd
	Hd9D9sy+3pSIup7cnbr6Ql4T93r/UI4lBUj7y1fxFxBU/bsLF8X7HOe1vDE5oASmT0ZAbw9JgQwTG
	0PAaNdoD0tmBGKXxor2a3RHF/f/A7IzusTqGRfIOPEydR83hDhZqAC2BB7pDzrxB9fi+xPJbxaYLE
	MERp0WOPb//0I9tqX1ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXxLk-00067c-R1; Fri, 22 Nov 2019 01:03:04 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXxLi-00067B-RR
 for linux-rockchip@lists.infradead.org; Fri, 22 Nov 2019 01:03:04 +0000
Received: by mail-qk1-x72c.google.com with SMTP id i3so4843905qkk.9
 for <linux-rockchip@lists.infradead.org>; Thu, 21 Nov 2019 17:03:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rLn+spXwD5Gur5nkjctsP5V0aZgN6H8nJlveJPJexlo=;
 b=aMUhw2CrkItSqKYJrbJfKMcVuXfBjIklX05uuUj1dxbx9rpA5JAwYhoqpHMx0TLp/k
 6sWxWJsXCcJKFsuLfycxGX3uWnGYzGCpiV2Nezwgc9C0456qvYfhHDSef8tg54+W7SO9
 uq+RsmnQ6CeijBsmzgeqBFqp0CV78sqVJUupKwyjUfykmJrV2R2OAZzFGzCFVMNBk09Y
 5dSr11ngR0KRAwV2Mr2GR6L9hj6BXEYSkQymqwIWKNq+Q5jO23rKBoyuKGo/7Etm2kka
 61YvHXHfdTH2Xmey66z2h5Kx7Md+xnW7Ehh6Cict3XMFGdykZ3FtbmTo91/6qcVlj3se
 wtMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rLn+spXwD5Gur5nkjctsP5V0aZgN6H8nJlveJPJexlo=;
 b=OJPbYtFXqcx5558F117uSPGPIi2uX/fnKQo77QPR8d19oj92DNE0ogxLHFIrvpVJYn
 m7y0MkMOwRr4uquSbLCxuwEyYsHac1YKBfVVEJWCoHXpT90vHUqXATkCfZ19u+lXR5JK
 +gyHqf23htWLdawNBGZcZxJWNKMt7cGam3X2n4/VJyHPZ1gqMF1WCGA1tK9GV/nDxexQ
 dhJf+w3r40eIDeZpeMEdXIW+YatT0iSJO4dTxWRkdXl4dR8pfENzszI7xgtjVXngZksB
 LNhKTTpjq1S/X3RYHhYsBqGFT3JdmCvs0mWLRd9X552hF6xEdJIYBP5lyUy6D3T2fX5X
 +KZQ==
X-Gm-Message-State: APjAAAUGzfzP2bEXDDwsPQUG0dmHnCrDR+dw/2/0JNXvIy5enlEgq5fL
 Z+hfgLQ/aG4d88erMPxXtjYj1A0KL0Cb9MpPExI=
X-Google-Smtp-Source: APXvYqxj0pB2VzPDUIINmaf0t62qMlvXq7e1U8fuXFSBPl8wr8DoIIeKhzzijwbbovaeMmOjpWpDiqQWs4dHYEFET64=
X-Received: by 2002:a37:6c01:: with SMTP id h1mr818688qkc.484.1574384580750;
 Thu, 21 Nov 2019 17:03:00 -0800 (PST)
MIME-Version: 1.0
References: <CAMdYzYp7kQdMKzX2RQW0tY2P4Um=CNJW93RPquBmYATRGrxwng@mail.gmail.com>
 <20191112022938.GA89741@google.com>
 <CAMdYzYrYHtiEXwiKxwWcKSV7Re6dG4zTvkKtZxvso+fLBRYbPQ@mail.gmail.com>
 <991e386e-4c4f-fcbd-89a1-1edd82f63ece@arm.com>
 <CAMdYzYri-yroFtvVXdNZH=sNOM7RP_PBHVnmbHuAKmGBZ0GifA@mail.gmail.com>
 <CAMdYzYrc-AJNpnqR6Xw9Np0wuUvS4-u+TCS2WEo78TfyEhCQKg@mail.gmail.com>
 <CAMdYzYow8SuXb_8ow433O_+Wezxb-U08WDUiLxcTKh+1_zBzkQ@mail.gmail.com>
 <CAMdYzYphu1vHEprfry52+vH9Hjp3ZddgY5hk4Xqk2b3v=DU80g@mail.gmail.com>
 <2a381384-9d47-a7e2-679c-780950cd862d@rock-chips.com>
In-Reply-To: <2a381384-9d47-a7e2-679c-780950cd862d@rock-chips.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 21 Nov 2019 20:02:50 -0500
Message-ID: <CAMdYzYowLb-FRUxP_TC+4LFwYdvszq+mBvfXBiDTCqtbF0x5xg@mail.gmail.com>
Subject: Re: [BUG] rk3399-rockpro64 pcie synchronous external abort
To: Shawn Lin <shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_170302_913296_268CC0FA 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:72c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Bjorn Helgaas <helgaas@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-pci@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 9:05 PM Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
<snip>
>
> Not having too much time to follow up w/ upstream development, sorry.
> I attach a patch based on Linux-next for debugging, but I don't know if
> it could work as expected since I can't test it now. But at least it
> shows what the problems were.

Well it is certainly hideous, and does not compile cleanly (built-in
complains, module is broken), but it finished scanning all buses.
I'll do some more serious testing and get back to you with more results.
Thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
