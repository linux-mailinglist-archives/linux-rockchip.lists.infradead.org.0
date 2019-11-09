Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D88F6047
	for <lists+linux-rockchip@lfdr.de>; Sat,  9 Nov 2019 17:38:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iSFKFSfG6IF76jiYs7nE+h1wvpYBJX6gDwnDaXlqu7k=; b=cR6ki9UsiByHon
	uTZGoNpvlh7ZQ9z97xPEvn7JVPICkMs4YW0LSA42Kax+GfFLRpV4rbRDnL1CGtjKx0OqU5MRJUcln
	uezl+Sw5diKKPrKfPjpCH21N3IV2m7rZJI1FN0UPzg0FzoeXRnABpL6SzWFKL6tplqFcFtfJmSQQR
	AjkTarXOoHjh4fzG9TX5+stN9ack0NjriOkWjrMsOaK2cN9M1S8BUfJlYvIVS3P4btogo09XHPCQR
	fW5mro62Qksf0QpDmDFUvAGmjHHz8B5+Nni5EN8vgnjLgV9ncXLvIPpIEnTZTH8oK1fRDWGidPOuU
	J6zp0n1GJ83xGGYdun9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTTki-0001au-TO; Sat, 09 Nov 2019 16:38:20 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTTkd-0001YY-6K
 for linux-rockchip@lists.infradead.org; Sat, 09 Nov 2019 16:38:18 +0000
Received: by mail-il1-x144.google.com with SMTP id d83so7957914ilk.7
 for <linux-rockchip@lists.infradead.org>; Sat, 09 Nov 2019 08:38:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HxoV9IMtdhTS/mEMSWUWhbowDm+u8Sv/9Z0oeSl6BrA=;
 b=BJhIKJrg1cAz9/9zT2ePr6CZWTPcElsKmYTc10xXaLa7jGWd6dHlkOfLixKD60yuCi
 1p2ZVQnHmSQ7hCDdQtOCruTepiQhcCZQt7tAsXsJpKJIfw6cUKi5Xp7fUa6FQyTTz3Gk
 M16Beik877oSdn0ZUsrjzWg+qbgNGAi2PUTR0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HxoV9IMtdhTS/mEMSWUWhbowDm+u8Sv/9Z0oeSl6BrA=;
 b=h3vwe7yRyPlidpVMwZeRn4WBqUqt7MfAUdOGspXrVO9a28JSaBkNvyv7yv0YiFPQJ7
 ycNUb/+0KVLILm7XllfvRnUz3PmDoyoHYgBQxgP+I2Erck3BjNIOs++5v1/NPHaTPRXO
 i118luZcgy4c+vFUilLNMHiPsIUctobTOspX44wGkMnugYVwEwP51RWh4i6QUF5RGt1P
 68yJZaNbHAaXV7dyWfFOPBW5R0L47q5sE6uHk+tGKVnkn403B3xfn//VweEu8m2m5QNL
 OmqCKiXOAQ+u01XafErvlMAXB279Tnuw7+bKhZbBHGp6nAHrBuldc5LR81wxIyiarU3N
 lTxA==
X-Gm-Message-State: APjAAAUDOvqOUIjL7aSoOKFks8nZEjS9p9n/lR3dAgGZXlaER9MnoARt
 T56O4bJrNnDDaZ+CSsyCL5oVmEvw0Kc=
X-Google-Smtp-Source: APXvYqxOH4nmNO2prwpl80Td+iYHKICI8ClraAyi8g/8hV7hhI/qsCQ6jYtynr6epSK+XbpcXXmjMg==
X-Received: by 2002:a92:4003:: with SMTP id n3mr4931735ila.304.1573317493538; 
 Sat, 09 Nov 2019 08:38:13 -0800 (PST)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com.
 [209.85.166.51])
 by smtp.gmail.com with ESMTPSA id y15sm1300935iln.32.2019.11.09.08.38.12
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 09 Nov 2019 08:38:12 -0800 (PST)
Received: by mail-io1-f51.google.com with SMTP id p6so9689566iod.7
 for <linux-rockchip@lists.infradead.org>; Sat, 09 Nov 2019 08:38:12 -0800 (PST)
X-Received: by 2002:a02:ad14:: with SMTP id s20mr9027678jan.132.1573317491623; 
 Sat, 09 Nov 2019 08:38:11 -0800 (PST)
MIME-Version: 1.0
References: <CAMdYzYoTwjKz4EN8PtD5pZfu3+SX+68JL+dfvmCrSnLL=K6Few@mail.gmail.com>
 <CAMdYzYqQpVrA9DpN5GRc2RqvsShSamw2EBJDxwng1aE3sfpfdg@mail.gmail.com>
In-Reply-To: <CAMdYzYqQpVrA9DpN5GRc2RqvsShSamw2EBJDxwng1aE3sfpfdg@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Sat, 9 Nov 2019 08:37:57 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XXrSsnr08bbY_Lv39tdNSUOyDDSVj_3+701eYNpFRhWQ@mail.gmail.com>
Message-ID: <CAD=FV=XXrSsnr08bbY_Lv39tdNSUOyDDSVj_3+701eYNpFRhWQ@mail.gmail.com>
Subject: Re: [BUG] rk3399-rockpro64 pcie synchronous external abort
To: Peter Geis <pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_083815_275688_F974DAFB 
X-CRM114-Status: GOOD (  20.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Fri, Nov 8, 2019 at 5:09 PM Peter Geis <pgwipeout@gmail.com> wrote:
>
> Good Evening,
>
> I'm not sure, but I believe the pcie address space built into the
> rk3399 is not large enough to accommodate the pcie addresses the card
> requires.
> I've been trying to figure out if it's possible to use system ram
> instead, but so far I haven't been successful.
> Also, the ram layout for the rk3399 is odd considering the TRM, if
> anyone has any insights in to that, I'd be grateful.
>
> On Mon, Nov 4, 2019 at 1:55 PM Peter Geis <pgwipeout@gmail.com> wrote:
> >
> > Good Morning,
> >
> > I'm attempting to debug an issue with the rockpro64 pcie port.
> > It would appear that the port does not like various cards, including
> > cards of the same make that randomly work or do not work, such as
> > Intel i340 based NICs.
> > I'm experiencing it with a GTX645 gpu.
> >
> > This seems to be a long running issue, referenced both at [0], and [1].
> > There was an attempt to rectify it, by adding a delay between training
> > and probing [2], but that doesn't seem to be the issue here.
> > It appears that when we probe further into the card, such as devfn >
> > 1, we trigger the bug.
> > I've added a print statement that prints the devfn, address, and size
> > information, which you can see below.
> >
> > I've attempted setting the available number of lanes to 1 as well, to
> > no difference.
> >
> > If anyone could point me in the right direction as to where to
> > continue debugging, I'd greatly appreciate it.

I don't have tons of knowledge here, but your thread happened to fly
by my Inbox and it reminded me of issues we faced during the bringup
of rk3399-gru-kevin where our WiFi driver would kill the whole system
in random / hard to debug ways.

If I remember, the problem was that the rk3399 PCIe behaved very badly
when you try to access the bus is in certain power save modes.  I
think that traditional x86-based controllers just return 0xff in the
same state, but rk3399 gives some sorts of asynchronous bus errors.

IIRC our problem was fixed with:

https://crrev.com/c/402092 - FROMLIST: mwifiex: fix corner case power save issue

...that's about all the knowledge I have around this area, but
possibly it could point you in the right direction?

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
