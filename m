Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D268A109731
	for <lists+linux-rockchip@lfdr.de>; Tue, 26 Nov 2019 01:06:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lsm0W1s9TG9ZRIs2H4JMBN58EWMXEG5/zOrgBrfNb0g=; b=mdAztcLV6zSrM1
	2pFpFq2z3t5Xe5BGSJ5WYOqCNcRQLqVz7UtIJoORb6FsxDavACrXgbWl5nJK3tYpX4WtisW3FkWiO
	6ADwqDRb8RuspI8T58wFkvFOxEbAEVNQyLsBx9CWD4xsN7m5ud55UIrUF5Y74tySHUnsTMC6dG0f6
	CWbim+J2LCNVg+/1TS9nVmXxNbj8EgI37bEU5P06Ev63dgb/pTxrCdKNMNnICSzJlVgZpkiSrXsbF
	eNb94VHvmOdqtoVZmY1YVpaJnwqzuibSK9mg3QDdNo2VQHKxeeNnrRRNHmfscqMkacxMKjrIoc15G
	Si+mgxW2je4+P724dzig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZONZ-0003Tu-S1; Tue, 26 Nov 2019 00:06:53 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZONX-0003TK-9H
 for linux-rockchip@lists.infradead.org; Tue, 26 Nov 2019 00:06:52 +0000
Received: by mail-qv1-xf43.google.com with SMTP id i3so6551895qvv.7
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Nov 2019 16:06:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wjxpah2sD+3yXzcLjdV1QL8C8bBsvI4QIqggmEswNpI=;
 b=FdJzhVThe+r5R5fQDL+5g2L01voZTRP8Wa3jMGq2UchntCN/MFb1uun+Z302t68uB+
 aVGgmMPcVIQL0iV8WNOakOK9PXl4okDQWZ3zDO0NrPnxaiFZYaepCbNugzvy9jBjlwrK
 xiZZCrsUJ/mufimyrKVSK//I/O1HorbbdZ2CJpXfzfPUFOqwSvqTZg/vTpKAhQfcLXof
 BFV2QJALZEoYssPC+o0FIpZGjqTRB+BQbAnYxPeeaZQXfhEi+U8nrg3ndSTh+SIdPBvz
 EiHT8brtNq5eKxBVi0S/Y0eaL9WKKIneWiq5hjuEMbkQ/X5DcH4WNDAQkd9kNj3Vm5yu
 Vbow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wjxpah2sD+3yXzcLjdV1QL8C8bBsvI4QIqggmEswNpI=;
 b=suF5GL3yOetZuqlmyXz6UfMpXIN2coK9/4mh1seTzDP7VGK30tyiKtEarkNrKA1R6T
 /akd2kH9rj4ezrUL6YwnHLR1LaF/HLMcsFfIdcL8DEer7v/CAPHekfG3gNUToOfP8keG
 rLZlaxDC4pn7KL89K37FBoBtUgBhVxsZlsaHdj+gSRFPo5mXOl3Rf8vqoRBtY/FiTz3c
 6kuHfw3Jfom7SyzV9d0S4gQh6RfFUAKRirXL3WxR1X1XOj0tvIrcsCt7I4FdCVosjM2I
 PzkBtKBGk42btFUNyn4Mzm2VvvYEhW7aKMheMPbBYBc8vsulp24EX1+G7dpOv6xnhFyF
 EY4w==
X-Gm-Message-State: APjAAAWyOXtKCBACDYgnEXPfNfgHji2BO5+rjBnihET5vYJFV9gb1Cq7
 ZgAO0w3Z0q4NOR8xcrEoEcHFKMqgJ7cesWPd613f2zTh
X-Google-Smtp-Source: APXvYqyznhyvjALGO2vVmUhsaQMNjNTl9Ab76jLkGt+AtFav38XPv8F47YWLffHDMGXEjR+AEGLvdhXyaF3CZSiQGmM=
X-Received: by 2002:a05:6214:1051:: with SMTP id
 l17mr18479110qvr.60.1574726810058; 
 Mon, 25 Nov 2019 16:06:50 -0800 (PST)
MIME-Version: 1.0
References: <CAMdYzYpi-wAsUu92gJUF3CMm7dDd8yFCAV-yDpuy=d7ZBGoZnA@mail.gmail.com>
In-Reply-To: <CAMdYzYpi-wAsUu92gJUF3CMm7dDd8yFCAV-yDpuy=d7ZBGoZnA@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 25 Nov 2019 19:06:41 -0500
Message-ID: <CAMdYzYoCxdeW-eNksDC1Gss0it4_4j+xbHbXFhtJ0reR44Ezpw@mail.gmail.com>
Subject: Re: [BUG] rk3399 rockpro64 fails to power off
To: heiko.stuebner@theobroma-systems.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_160651_324414_5C7A794A 
X-CRM114-Status: GOOD (  14.02  )
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

On Mon, Nov 25, 2019 at 11:34 AM Peter Geis <pgwipeout@gmail.com> wrote:
>
> Good Morning,
>
> Another issue I've come across with the rockpro64.
> When issuing a shutdown command, the board will halt, but never powers off.
>
> While the rk808 is assigned as the rockchip,system-power-controller in
> the devicetree, it is not binding to the pm-poweroff command.
> This is due to the psci driver already binding to the pm-poweroff command.
>
> I have only managed to test this with the rockchip miniloader, both on
> rockchip-u-boot and mainline-u-boot, the behavior is the same.
> I'm not sure if this is a bootloader issue, atf issue, or psci driver
> misbehavior.
> As atf should be handling the psci command, it should be powering off
> the board, but I am unsure if it has the capability of doing so.
> If it does not, then the rk808 driver should be assigned to
> pm-poweroff, but it does not because psci already claimed it.

Confirmed the issue also occurs with tpl/spl mainline u-boot.
I'm running the latest atf from the atf github repository.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
