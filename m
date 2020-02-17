Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 155AB16120C
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Feb 2020 13:31:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:In-Reply-To:
	References:MIME-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fjA3CWb/ElC6tvOicIQ++dzFf91362NX/g4tbFuvV68=; b=cIm1Hq2LJDHE7J
	RuZHhhjtCNxp43kzppSQ5eE6zLEoqgVbSXqxHOuY+HdlkV+jlyWyL8cEOrd94vUoZxgW7BpjzBio1
	r8jrK7OgQpglHdcc0RbnBegv4t640ra4rnvOtjKkAQIrX1FbXC3Q4O6OZt7q5tHlKPR7I9w85sGX4
	GoXJDPeQ8muZbtqz5Kmj9WLrVfLlr3olh13LANGrhIzjhjsHjr43AWYz6zpbhIcuOdDZLhgc9Xl9T
	c4uiLsriKy56a80S+K/MpJAMkFRWst0NJAxzu1xNhGXxboomYvaU6qBjSbZMfG/tunSjEA1orGLZ8
	w8iZw5cN+MQjejFwDVhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3fYS-0008Uv-Kj; Mon, 17 Feb 2020 12:31:16 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fYO-0008TQ-VT
 for linux-rockchip@lists.infradead.org; Mon, 17 Feb 2020 12:31:14 +0000
Received: by mail-qk1-x72a.google.com with SMTP id c20so15999066qkm.1
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Feb 2020 04:31:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
 h=from:mime-version:references:in-reply-to:date:message-id:subject:to
 :cc; bh=dXG6CClP4jx5ZwTa4pqIneGKAKm0xJl9UjRWD8qE7rY=;
 b=EllmxXhIsnJkfS1oYXIKDe7bbqnDMDLZGHT9WbCoQHfjwSmTR0hCU3DTkW6I5jsv8n
 EEIqIZqbDGYzCcwnWb/JO2znsuONwWdGkh/IlP/YtXc1mPhkCZBZlqZOfsGl885Nyxcw
 AcIzf7MpbOcET+Rs/745okgTITKpVWYLrWxdIj6HP3q7pLrqAD/hHmyw8ORDiEGrIqmh
 V0WkYpfpck7p6OaY3mWSL3eFPDOViCpfadTwq1Lq2vRTMOg3ZTuKXi1FzL+UHvEdETLD
 UiqRk35XPdkDjSSokqqxv0uLHrHdho7fY8/J4XusYqorZhNWNN0fuGlIJOIORS/z3xES
 JVsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:mime-version:references:in-reply-to:date
 :message-id:subject:to:cc;
 bh=dXG6CClP4jx5ZwTa4pqIneGKAKm0xJl9UjRWD8qE7rY=;
 b=XFmmt+nHwoTBLyFjKvfFO3XAaZvunJzmFuotjeV+lmIOoh3yUoIzSigDLjAa/GJw6m
 zDwSjL5Fz597MJma0REDBs98RHsFx1TJ7Qf8GbGCROzcyNKBZ2InDvNDnNWqMftlpRCo
 yKdztsIm7LZSs6upuwdSJCCzQWMoEImI23ynaTrAwcHryu6ix4tULbmgWTsHk8DsOLlb
 FUSLh3YW8eLghFcP+5DkXa2TFmkas/K9C19ghiSkCJan9zbuAOHpSOiNnAnFgTWoqOwz
 EiBCfYS9FCDcapLYEUB4hdz0mY/ym+KOGzu/odMEmozcAOY3+tpHJMX6GDfuDFYkWvj3
 sTOQ==
X-Gm-Message-State: APjAAAUpvYrSfhLg2ryykubhOH3NM1QGWinv/4qQwdo8xwRPFz2i9CGd
 s3osld+hiv+Gw0ZyP4FLd0829VCynjyCig==
X-Google-Smtp-Source: APXvYqwgrHC83htUA85bO3S1nM+p0mu5pFzZoH6G7/MOb2zyoURbiGQ5vYIULvZMKuSoM9P9UDt27w==
X-Received: by 2002:a37:6d47:: with SMTP id i68mr14145052qkc.228.1581942669867; 
 Mon, 17 Feb 2020 04:31:09 -0800 (PST)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com.
 [209.85.160.181])
 by smtp.gmail.com with ESMTPSA id s42sm88742qtk.87.2020.02.17.04.31.08
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Feb 2020 04:31:08 -0800 (PST)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by mail-qt1-f181.google.com with SMTP id l21so11843432qtr.8
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Feb 2020 04:31:08 -0800 (PST)
X-Received: by 2002:ac8:4b70:: with SMTP id g16mr12772150qts.296.1581942668095; 
 Mon, 17 Feb 2020 04:31:08 -0800 (PST)
MIME-Version: 1.0
References: <CAP9ODKprPi8N-dU8NaKwneXH-3b0ipSEDpU5mDbGntxuyhGhJw@mail.gmail.com>
 <41a7bfe7-54b1-84eb-091f-469d971ab968@synopsys.com>
In-Reply-To: <41a7bfe7-54b1-84eb-091f-469d971ab968@synopsys.com>
Date: Mon, 17 Feb 2020 09:30:56 -0300
X-Gmail-Original-Message-ID: <CAP9ODKoUH=Cc=uuhfaUy7fkSVdfBHhX-6oS9_hi3Wd6GgDiZYw@mail.gmail.com>
Message-ID: <CAP9ODKoUH=Cc=uuhfaUy7fkSVdfBHhX-6oS9_hi3Wd6GgDiZYw@mail.gmail.com>
Subject: Re: USB DWC2 stops responding when insert/remove cable multiple times
To: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_043113_075063_737702A2 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:72a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Felipe Balbi <balbi@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello Minas,

On Mon, Feb 17, 2020 at 5:58 AM Minas Harutyunyan
<Minas.Harutyunyan@synopsys.com> wrote:
> On 2/14/2020 5:40 PM, Otavio Salvador wrote:
...
> >      [  312.967867] g_serial gadget: high-speed config #2: CDC ACM config
> >      [  314.828173] dwc2 30180000.usb: new device is high-speed
> >      [  314.866943] dwc2 30180000.usb: new address 16
> >      [  314.889550] g_serial gadget: high-speed config #2: CDC ACM config
> >
>
> I assume here you few time disconnected and then connected cable and
> after last connection even when g_serial seen in last line it stop work.
> Correct?

Yes. It stops responding.

> > The "[  314.889550] g_serial gadget: high-speed config #2: CDC ACM
> > config" message is the last time it is detected. As mentioned, to
> > restore the port to work, we need to reload the g_serial module.
> >
> > When we reload it, following exception happens:
> >
>
> Actually exception happen in g_serial not dwc2. Why you assume that it
> because of dwc2?

Indeed. After reporting this, it does sounds it is two decouple
issues. The tty seems to be not properly cleaned up and it seems to
have a resource not properly cleaned up.

...
> > So, I am a bit lost how to debug this so I'd like to know what kind of
> > information might be useful to find the root cause of it?
>
> And despite of above exception, g_serial enumerated it works fine?

If reloaded the USB is detected but tty seems to not work. It seems it
fails to free the ttyGS0 previously used and thus it cannot properly
create the new device.

> Please provide me dump of follow dwc2 debugfs's: regdump, hw_params, params.

Do you want this on working and failing state or just the failing one?

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9 9981-7854          Mobile: +1 (347) 903-9750

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
