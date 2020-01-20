Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2E11430BF
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 Jan 2020 18:22:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L7ARi2kB6gn7g6wkSqDBMlrQWmVVLfVk6hOAaFdyEM4=; b=thOTa1NakQtoW2dB7GdHxmrVp
	1frBsd8tLjteKYww+WY3LSU8otMAHFz1xb0PHU4MnMAusSkBN9oA/yBCADd606FblkbTjSyC8qVQo
	HMnm6Cjwa8dWWq4LWlDiI+Oo+kbI+CzelT/HRe8pfSAaIsZ5OXAl7qFRrCeSODUKK9IdUy90QHrD+
	GaR0JDOfnAkFBW6pFsE6edIvD+dZL8UkKUtmbjRXIAoUsPPySxQcXJ0T4RDhC/RKxjt2tWLrdlc74
	rXKF3Mit/GJdaxwzhbtlWPWDzr0zYKEHkKcYRdhtTUt0zb9dPJYnv2F02OmETCNKOjlMrw3VOeBLI
	VCLDHCN4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1italH-0006kg-19; Mon, 20 Jan 2020 17:22:51 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1italA-0006jV-T9
 for linux-rockchip@lists.infradead.org; Mon, 20 Jan 2020 17:22:48 +0000
Received: by mail-yb1-xb41.google.com with SMTP id x191so44518ybg.12
 for <linux-rockchip@lists.infradead.org>; Mon, 20 Jan 2020 09:22:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cBZaB9iUqVKHNad4ANDtO7u2CI2f+F3Fr6CyeTacXIQ=;
 b=V3vpCaM5TCzdv5qtAFylG7MBdBJGtBFhIzIYKS0ZiX/ktIlyj+QR2NtiTa9eEgVS5G
 q6KLFpH0UT82iJc0bP2YP9yoRaxyPbE4C8un1b5+P7A8yEZNB0KSns+px8MMjP5T7dgm
 68o/rqy4vo9vzK52evgaSKU4GYgv/+/xP/N5A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cBZaB9iUqVKHNad4ANDtO7u2CI2f+F3Fr6CyeTacXIQ=;
 b=JXjNTiBgA0eaM3ydMnARGzCwyVq4AXnaSym2WZEThi/SWFtnDRM7HYnzfkWyIlZuQD
 czgNTc2uLwaqKnrRmXNTeSsYDWhyuszASxHBEkfEXZClsxppoWGctP3uxo9BSbKYr6rJ
 /2kK/g1ycY4nuT9a4Us0aXCgrBGo83AGdu75I3kMbKSDstOATSY6thTnMUt4q+e89plV
 Ynd1/Lrd8c0JV65nQqqFu76jWiqwBmI7+OokwqQY+aBgAw0ryVtMjA2j1HWjcl7qwVeq
 0duvH80qpP3s3jH88W1QCH15SgBt9P3ZGc/UJ9FaQl4GzS06cb5xS0b9mZ3cIjtNdRgj
 XuUw==
X-Gm-Message-State: APjAAAXCNiPo1Dep9J/9o0gnWJZvKCUup3b2cD78sZsJfQVlE8g+GTgc
 l5U+JdKXEzrBON1dvBkYDDaZqg==
X-Google-Smtp-Source: APXvYqyMFQMTxtjlpC5YJLenLaThRRemwcIaUlCl7m2aoaZQE/zwqCFCDO8qibg9bb1/RI1U6ZJZbQ==
X-Received: by 2002:a25:824d:: with SMTP id d13mr607189ybn.123.1579540963439; 
 Mon, 20 Jan 2020 09:22:43 -0800 (PST)
Received: from bill-the-cat
 (2606-a000-1401-86dd-b96e-413f-6954-8a35.inf6.spectrum.com.
 [2606:a000:1401:86dd:b96e:413f:6954:8a35])
 by smtp.gmail.com with ESMTPSA id q16sm15820682ywa.110.2020.01.20.09.22.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 Jan 2020 09:22:42 -0800 (PST)
Date: Mon, 20 Jan 2020 12:22:40 -0500
From: Tom Rini <trini@konsulko.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 02/11] distro_bootcmd: Add SF support
Message-ID: <20200120172240.GX8732@bill-the-cat>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-3-jagan@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20191221075440.6944-3-jagan@amarulasolutions.com>
X-Clacks-Overhead: GNU Terry Pratchett
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_092244_946538_E5221EAA 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org,
 Heinrich Schuchardt <xypron.glpk@gmx.de>, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de,
 Alexander Graf <agraf@csgraf.de>, Peter Robinson <pbrobinson@gmail.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: multipart/mixed; boundary="===============6953204537804658204=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============6953204537804658204==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Jh1kIBBoW85WO3/I"
Content-Disposition: inline


--Jh1kIBBoW85WO3/I
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

+A few people that may have insight to my question

On Sat, Dec 21, 2019 at 01:24:31PM +0530, Jagan Teki wrote:

> Add distro boot command support for SPI flash.
>=20
> This distro boot will read the boot script at specific
> location at the flash and start sourcing the same.
>=20
> The common macro like BOOTENV_SHARED_FLASH would help
> to extend the support for nand flash in future.
>=20
> Cc: Tom Rini <trini@konsulko.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

What distro is this for?  My concern here is that hundreds of boards
(literally) grow by a few hundred bytes to add in this bit of additional
default logic.  That's not a big problem if distributions are now going
to be using SPI flash as where they're programming in their bootscript.
But, who is doing that?  Thanks!

--=20
Tom

--Jh1kIBBoW85WO3/I
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6HLbQJwaaH776GM2h/n2NdMddlIFAl4l4eAACgkQh/n2NdMd
dlKKZg/8D01DV7ek/sgmMvrUCrjgxeFJX3yama0hZdtvIazoH7Fi5GL7zHHTeiZh
7rSZeokgAsyChIjXZ6I6W14xKLx6fhP3ljuzN0wJpFC6LfNnjVgxgvuXVbFcc6jS
nT7t5coyYEB7tOe98dzcbEILCRorp9EXZY8SJRa8qVqQB6LgNEFHQGnZyVsBnKID
iw/ZvbaLctMNUdKmsGtbROW5LWPCx+i3DDEKC3VhIQ7FxReISmgDnCEvYns4s1qp
ykrUljs60SJg15eLP1K8Wgpx34yCnSkDeQffKjNy7KLzwk3mk7Z3T6bHK9RJtp0i
LNhTaS9Vs/EnV0R2ooSpCRGJKFmARyKTIk06+czcQWLPPu8ZRC0UmgMhzLGwuNpU
tdASey5mrf2bRD8S/EhQqS1ZiZFZ8BGi7W0nfoRdc1AfeNuAs3ECYfjvrF5p6Ox2
pcmHoowACO3rCeDSzXhquc1aODTQ4Qz3KysOKkO+KuJ3dtMyoSW5KHR/MmSsobOZ
1OkGTP6Scz3l2NZR72DvkjcY9eCss+q894byFR9h05mGPDHzVlDdb59RsGttGOZa
OwzXjBBZhkzhEsM3dx8vsrWXEBX0xM/KEIzxY7OTcZnSEyKNQxkkptaaiKZ9xkqd
dBWp4ly8qYwfMCVVFPfcuIxX4SbRNh4Dd9lXOQGg2MqeoO7pAJ0=
=q5iB
-----END PGP SIGNATURE-----

--Jh1kIBBoW85WO3/I--


--===============6953204537804658204==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6953204537804658204==--

