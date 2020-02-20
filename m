Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC782165E7E
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Feb 2020 14:16:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:In-Reply-To:
	References:MIME-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4XGjiorhp+gZrXedI+h1y/1Xis0GGz7dTczIqoFjjQE=; b=Qldmkd9L4Wtb8c
	7Fx1+ormtI+Rfzqkf0YSufsc96amCfSgn77aHP88sxJC7IGt7nPgR8pw3tDoFKxeL2kSjvN8155VU
	HkYNl8P+tJHbxZhyJobkthkgIP9HZJE2FCM+l3AJ23u03XTFgb2YjaHljyEh44farxu/Q8mGp1cfp
	ssJpx6WBfY4Pqu9GKaCyIwBvDkiyL6hZyGNfSmERfhbWmQyIhKY9LfKBT5+huEOOQ+tdO1X5O2Pto
	Rd6m3DxPllqNy2WBBR0KtCRZDPnbWDh3k0g7H9Iv2CO16ZR9ZILNlQA0ClqgEh+GHzzbfSLbJqc0k
	eScJaE8WZ9ci37JnOz8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4lgf-00017A-Ao; Thu, 20 Feb 2020 13:16:17 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4lgc-00016q-D5
 for linux-rockchip@lists.infradead.org; Thu, 20 Feb 2020 13:16:15 +0000
Received: by mail-qt1-x82d.google.com with SMTP id d9so2775389qte.12
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Feb 2020 05:16:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
 h=from:mime-version:references:in-reply-to:date:message-id:subject:to
 :cc; bh=+NfiYwwPA7ooP+cdAEaBr1ztzKat3cXTXeQyrILmnPI=;
 b=vG1QEkrA3Uvi8+PJ36gPJrxIpo8W+zB7FdH4ofKAwjvIm6ioIVs5qIUf70m2FpH3Qu
 bs9vjwKuo3/9gyeTxSBqp1okU84fYRQChyl8pNgJzVFseu/cDPP7QBrf1LqEXv6Ru6Po
 gXBmL/GP7K4mYpsUVOQPYGWkDx83nyBTt4YavfgMf+cLoPeUCdztudq9E7wH2GC4eG/F
 dR73YP+qYb+CI3BFu7LIRonB39T4L4UmeTxk10GrjTnAX+wnBWNj55d3comWvnAkc0Pb
 ESla6kB9n+uZXL1MHIKxlkNIe+o8zGrx1qxgt0bi2PgjVwoIRKZrCSKZ+yHWhmfXs72D
 A0rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:mime-version:references:in-reply-to:date
 :message-id:subject:to:cc;
 bh=+NfiYwwPA7ooP+cdAEaBr1ztzKat3cXTXeQyrILmnPI=;
 b=AU80ZdfoSidUhrpv1D0/oLcx7xCBefuw/dIWTmjNIBAF3Z3HRVotgsj5IRgIxsJ0TS
 WnSaconzlQOLftzXBQDCI1pGfsuVEoJvvW9EPWqy497UtQh/6barNlSV7lqoPJLiDl2f
 1bigdxG3vZyQEw0equ73UiwxxYPswBj1Dt8oymoNgaUgvP/+IoI/7tjVPoaC7Io2ZuxZ
 ZDPuE/xyueG3YP5NCTDgz5uFc9eLmASXI1s8sU+NUMDWn6Go2hq4gu2aLU3C2qvVoS8f
 uYksz7FqEXk9O2jQmSamvbuLwLQY8KeqbvsG+M5SqV2ROFh6HCyRq3uEZASWuHjkehbW
 1RDQ==
X-Gm-Message-State: APjAAAU/1pMTPlrVAYdm8144IrgV0205AmWr0acd2bgtp7qGisRhz0gE
 5mR3LeFJo/2LvOq6wwZ+YvoLVbaYj8WyGg==
X-Google-Smtp-Source: APXvYqydYAU2pPsSbR6wqOz1haF2z9ymaVwVFcPqi/GNWGvBPIS1miNOE9MDSd/XmqJ0lIwuQ/gm1Q==
X-Received: by 2002:ac8:4289:: with SMTP id o9mr26407360qtl.277.1582204572714; 
 Thu, 20 Feb 2020 05:16:12 -0800 (PST)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com.
 [209.85.222.177])
 by smtp.gmail.com with ESMTPSA id 132sm1588041qkn.109.2020.02.20.05.16.11
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 20 Feb 2020 05:16:12 -0800 (PST)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by mail-qk1-f177.google.com with SMTP id d11so3441037qko.8
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Feb 2020 05:16:11 -0800 (PST)
X-Received: by 2002:a37:a111:: with SMTP id k17mr1060759qke.26.1582204571511; 
 Thu, 20 Feb 2020 05:16:11 -0800 (PST)
MIME-Version: 1.0
References: <CAP9ODKprPi8N-dU8NaKwneXH-3b0ipSEDpU5mDbGntxuyhGhJw@mail.gmail.com>
 <41a7bfe7-54b1-84eb-091f-469d971ab968@synopsys.com>
 <CAP9ODKoUH=Cc=uuhfaUy7fkSVdfBHhX-6oS9_hi3Wd6GgDiZYw@mail.gmail.com>
 <ee47be28-ba9f-750f-65d2-51a722ce291d@synopsys.com>
 <CAP9ODKqa_4NSsFMUpyFDt3ohgGBCMgbOyKaVjYfSjmcZLmmC+A@mail.gmail.com>
 <380d765b-8867-a899-b67a-c016c09fa27b@synopsys.com>
 <CAP9ODKqL_GN+iebL3wPX_9fEUtUVP8Ahv03yJ1R-JLDr=Cn0BA@mail.gmail.com>
 <beddbc55-fd22-96b7-c980-e4ea207a42f5@synopsys.com>
In-Reply-To: <beddbc55-fd22-96b7-c980-e4ea207a42f5@synopsys.com>
Date: Thu, 20 Feb 2020 10:16:00 -0300
X-Gmail-Original-Message-ID: <CAP9ODKq2nEHz_rbwwCv-94LSBOq0it2Kc4yhCqrLT-XxoXommg@mail.gmail.com>
Message-ID: <CAP9ODKq2nEHz_rbwwCv-94LSBOq0it2Kc4yhCqrLT-XxoXommg@mail.gmail.com>
Subject: Re: USB DWC2 stops responding when insert/remove cable multiple times
To: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_051614_467232_CE48F2F8 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Thanks for all your help on this, ...

On Thu, Feb 20, 2020 at 3:59 AM Minas Harutyunyan
<Minas.Harutyunyan@synopsys.com> wrote:
>
> On 2/19/2020 7:10 PM, Otavio Salvador wrote:
...
> > What sequence do you want us to do?
>
> Yes. Can you provide also USB trace?

I can, however, it is not clear to me what you want us to do.

Should we use, on host side, usbmon? or do you want something different?

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9 9981-7854          Mobile: +1 (347) 903-9750

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
